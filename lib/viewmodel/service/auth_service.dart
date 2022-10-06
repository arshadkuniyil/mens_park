import 'dart:collection';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static final auth = FirebaseAuth.instance;

  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> signUpWithPhone(
      {required HashMap userData,
      required Function({required String responseCode})
          responseCallback}) async {
    await auth.verifyPhoneNumber(
      timeout: const Duration(seconds: 60),
      phoneNumber: '+91${userData['mobileNumber']}',
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) {
        responseCallback(responseCode: e.code);
      },
      codeSent: (String verificationId, int? resendToken) async {
        SharedPreferences sh = await SharedPreferences.getInstance();
        sh.setString('verificationId', verificationId);
        sh.setString('userDisplayName', userData['fullName']);
        sh.setString('mobileNumber', '+91${userData['mobileNumber']}');
        sh.setInt('otpSentTime', DateTime.now().millisecondsSinceEpoch);
        sh.setBool('isPhoneVerified', false);
        if (resendToken != null) {
          sh.setInt('resendToken', resendToken);
        }
        sh.remove('smsSentCount');
        responseCallback(responseCode: 'code-sent');
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }

  Future<PhoneSignInStatus> signInWithPhoneOtp(String smsCode) async {
    final SharedPreferences sh = await SharedPreferences.getInstance();
    final String? verificationId = sh.getString('verificationId');
    final String? displayName = sh.getString('userDisplayName');
    final PhoneAuthCredential credential;

    if (verificationId != null) {
      try {
        credential = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: smsCode,
        );

        final userCredential = await auth.signInWithCredential(credential);
        if (userCredential.user != null) {
          userCredential.user!.updateDisplayName(displayName);
          sh.remove('isPhoneVerified');
          sh.remove('smsSentCount');
          return PhoneSignInStatus.success;
        } else {
          return PhoneSignInStatus.failed;
        }
      } on FirebaseAuthException catch (e) {
        switch (e.code) {
          case 'network-request-failed':
            return PhoneSignInStatus.networkError;
          case 'invalid-verification-code':
            return PhoneSignInStatus.invalidVerificationCode;
          case 'invalid-verification-id':
            return PhoneSignInStatus.invalidVerificationId;
          default:
            return PhoneSignInStatus.unknownError;
        }
      }
    } else {
      return PhoneSignInStatus.unknownError;
    }
  }

  Future<void> resendOtp(
      {required Function({required String responseCode})
          responseCallback}) async {
    final SharedPreferences sh = await SharedPreferences.getInstance();
    final int? resendToken = sh.getInt('resendToken');
    final int? smsSentCount = sh.getInt('smsSentCount');
    final String? mobileNumber = sh.getString('mobileNumber');
    if (smsSentCount != null && smsSentCount > 2) {
      responseCallback(responseCode: 'sms-limit-exceed');
      return;
    }

    auth.verifyPhoneNumber(
      forceResendingToken: resendToken,
      phoneNumber: mobileNumber,
      verificationCompleted: (phoneAuthCredential) {},
      verificationFailed: (error) {
        responseCallback(responseCode: error.code);
      },
      codeSent: (verificationId, forceResendingToken) {
        sh.setInt('smsSentCount', ((smsSentCount ?? 0) + 1));
        sh.setString('verificationId', verificationId);
        sh.setInt('otpSentTime', DateTime.now().millisecondsSinceEpoch);
        sh.setBool('isPhoneVerified', false);

        if (forceResendingToken != null) {
          sh.setInt('resendToken', forceResendingToken);
        }

        responseCallback(responseCode: 'code-resent');
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }

  // anonymousSignIn() async {
  //   try {
  //     await auth.signInAnonymously();

  //     return ErrorEnum.noError;
  //   } on FirebaseAuthException catch (e) {
  //     switch (e.code) {
  //       case 'network-request-failed':
  //         return ErrorEnum.networkError;

  //       default:
  //         return ErrorEnum.unknownError;
  //     }
  //   }
  // }

  getUser() {
    return auth.currentUser;
  }

  signOut() {
    auth.signOut();
  }
}
