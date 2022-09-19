import 'dart:collection';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static final auth = FirebaseAuth.instance;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // int? statusCode;

  // String? msg;

  Future<void> signUpWithPhone(HashMap userData, BuildContext context) async {
    try {
      log('number ${userData['mobileNumber']}');
      await FirebaseAuth.instance.verifyPhoneNumber(
        timeout: const Duration(seconds: 60),
        phoneNumber: '+91${userData['mobileNumber']}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          log('$credential');
        },
        verificationFailed: (FirebaseAuthException e) {
          log('$e');
        },
        codeSent: (String verificationId, int? resendToken) async {
          final codeController = TextEditingController();
          log('$verificationId ::: $resendToken');
          SharedPreferences sh = await SharedPreferences.getInstance();
          sh.setString('a', verificationId);

          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: const Text("Enter OTP"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      keyboardType: TextInputType.phone,
                      controller: codeController,
                    ),
                  ],
                ),
                actions: <Widget>[
                  ElevatedButton(
                    child: const Text("Confirm"),
                    onPressed: () async {
                      final smsCode = codeController.text.trim();

                      // PhoneAuthCredential credential =
                      //     PhoneAuthProvider.credential(
                      //         verificationId: verificationId, smsCode: smsCode);

                      // await auth.signInWithCredential(credential).then((value) {
                      //   if (value.user != null) {
                      //     log('success');
                      //     Navigator.pushReplacementNamed(context, '/');
                      //   }
                      // });
                    },
                  )
                ],
              );
            },
          );
          log('onCodesend final');
        },
        codeAutoRetrievalTimeout: (verificationId) {
          log("onAutoretrevel");
        },
      );
    } catch (e) {
      log("on Catch: $e");
    }
  }

  getUser()  {
    auth.signOut();
    return auth.currentUser;
  }
  login()async {
      String verificationId = await SharedPreferences.getInstance()
        .then((value) => value.getString('a')!);
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: '300300');

    await auth.signInWithCredential(credential).then((value) {
      if (value.user != null) {
        log('success');
      }
    });
  }
}
