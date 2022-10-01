import 'dart:collection';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/viewmodel/bloc/sign_up/sign_up_bloc.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static final auth = FirebaseAuth.instance;

  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  signUpWithPhone(HashMap userData, BuildContext context) async {
    await auth.verifyPhoneNumber(
      timeout: const Duration(seconds: 60),
      phoneNumber: '+91${userData['mobileNumber']}',
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) {
        log('${e.code}');
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
    final PhoneAuthCredential credential;

    if (verificationId != null) {
      try {
        credential = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: smsCode,
        );

        await auth.signInWithCredential(credential).then((userCredential) {
          if (userCredential.user != null) {
            log("on success");
            return SignInStatus.success;
          } else {
            log("on onfailed");
            return SignInStatus.failed;
          }
        });
      } on FirebaseAuthException catch (e) {
        log("on Catch: $e");
        switch (e.code) {
          case 'network-request-failed':
            return SignInStatus.unknownError;
          case 'invalid-verification-code':
            return SignInStatus.unknownError;
          default:
            return SignInStatus.unknownError;
        }
      }
    }
    log("on else");
    return SignInStatus.unknownError;
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

  funct() {
    return true;
  }
}
