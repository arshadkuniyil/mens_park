import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:mens_park/utils/colors.dart';

import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/view/widgets/text_field_outer_widget.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = getScreenWidth(context);
    String otp = '';
    return Scaffold(
      backgroundColor: kGrey,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * .1),
            child: TextFieldOuter(
              child: TextFormField(
                keyboardType: TextInputType.number,
                maxLength: 6,
                decoration: const InputDecoration(
                  counterStyle: TextStyle(fontSize: 20),
                  hintText: '______',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
                style: TextStyle(
                    letterSpacing: screenWidth * .08,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
                onChanged: (value) {
                  otp = value;
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: screenWidth * .1 + 10),
            child: ElevatedButton(
              onPressed: () {
                log('submit otp pressed');
                AuthService().signInWithPhoneOtp(otp);
              },
              child: const Text('Submit'),
            ),
          ),
          const Spacer()
        ],
      )),
    );
  }
}
