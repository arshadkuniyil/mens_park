import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String otp = '';
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  otp = value;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    log('submit otp pressed');
                    AuthService().signInWithPhoneOtp(otp);
                  },
                  child: const Text('Submit'))
            ],
          )),
    );
  }
}
