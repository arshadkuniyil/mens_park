import 'dart:collection';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static final auth = FirebaseAuth.instance;

  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  signUpWithPhone(HashMap userData, BuildContext context) async {
    try {
      await auth.verifyPhoneNumber(
        //
        timeout: const Duration(seconds: 60),
        phoneNumber: '+91${userData['mobileNumber']}',

        verificationCompleted: (PhoneAuthCredential credential) async {},

        verificationFailed: (FirebaseAuthException e) {},

        codeSent: (String verificationId, int? resendToken) async {
          //
          SharedPreferences sh = await SharedPreferences.getInstance();
          sh.setString('verificationId', verificationId);
          if (resendToken != null) {
            sh.setInt('resendToken', resendToken);
          }
        },

        codeAutoRetrievalTimeout: (verificationId) {},
      );
      return SignUpWithPhoneError.noError;
    } catch (e) {
      print("on Catch: $e");
      return SignUpWithPhoneError.noError;
    }
  }

  signInWithPhoneOtp(String smsCode) async {
    final SharedPreferences sh = await SharedPreferences.getInstance();
    final String? verificationId = sh.getString('verificationId');
    final PhoneAuthCredential credential;
    if (verificationId != null) {
      try {
        credential = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: smsCode,
        );
        await auth.signInWithCredential(credential).then((userCredential) {
          if (userCredential.user != null) {
            print('success');
          } else {
            print('failed');
          }
        });
      } catch (e) {
        print('onLoginCatch:: $e');
      }
    }
  }

  anonymousSignIn() async {
    try {
      await auth.signInAnonymously();

      return ErrorEnum.noError;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'network-request-failed':
          return ErrorEnum.networkError;

        default:
          return ErrorEnum.unknownError;
      }
    }
  }

 User? getUser() {
    return auth.currentUser;
  }

  signOut() {
    auth.signOut();
  }
}
