import 'dart:collection';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/viewmodel/bloc/sign_up/sign_up_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/service_status_enum.dart';

class AuthService {
  static final auth = FirebaseAuth.instance;

  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> signUpWithPhone(HashMap userData, BuildContext context) async {
    await auth.verifyPhoneNumber(
      timeout: const Duration(seconds: 60),
      phoneNumber: '+91${userData['mobileNumber']}',
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) {
        context
            .read<SignUpBloc>()
            .add(SignUpWithPhoneRes(responseCode: e.code));
      },
      codeSent: (String verificationId, int? resendToken) async {
        final resEvent = context
            .read<SignUpBloc>()
            .add(const SignUpWithPhoneRes(responseCode: 'code-sent'));

        SharedPreferences sh = await SharedPreferences.getInstance();
        sh.setString('verificationId', verificationId);
        sh.setString('userDisplayName', userData['fullName']);
        sh.setBool('isPhoneVerified', false);
        if (resendToken != null) {
          sh.setInt('resendToken', resendToken);
        }
        resEvent;
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }

  Future<SignInStatus> signInWithPhoneOtp(String smsCode) async {
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
          sh.setBool('isPhoneVerified', true);
          return SignInStatus.success;
        } else {
          return SignInStatus.failed;
        }
      } on FirebaseAuthException catch (e) {
        switch (e.code) {
          case 'network-request-failed':
            return SignInStatus.networkError;
          case 'invalid-verification-code':
            return SignInStatus.invalidVerificationCode;
          case 'invalid-verification-id':
            return SignInStatus.invalidVerificationId;
          default:
            return SignInStatus.unknownError;
        }
      }
    } else {
      return SignInStatus.unknownError;
    }
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
