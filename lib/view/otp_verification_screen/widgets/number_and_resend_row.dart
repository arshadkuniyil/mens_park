import 'package:flutter/material.dart';
import 'package:mens_park/helpers/custom_alert_dialog.dart';
import 'package:mens_park/res/constant.dart';
import 'package:mens_park/res/global/global.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'resend_otp_widget.dart';

class NumberAndResendRow extends StatelessWidget {
  const NumberAndResendRow({
    Key? key,
    required this.kContainerPadding,
    required this.mobileNumber,
    this.otpSentTime, required this.isSmsResending,
  }) : super(key: key);

  final double kContainerPadding;
  final String mobileNumber;
  final int? otpSentTime;
  final bool isSmsResending;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              mobileNumber,
              style: kTextStyle1,
            ),
            TextButton(
              onPressed: () {
                showCustomAlert(context,
                    'Are you sure the number you entered is incorrect?',
                    (_) async {
                  final SharedPreferences sh =
                      await SharedPreferences.getInstance();
                  sh.remove('isPhoneVerified');
                  sh.remove('smsSentCount');
                  navigatorKey.currentState?.pushReplacementNamed('/signUp');
                });
              },
              child: const Text(
                'Wrong Number ?',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
        const Spacer(),
        otpSentTime == null
            ? const SizedBox()
            : isSmsResending
                ? const CircularProgressIndicator()
                : Padding(
                    padding: EdgeInsets.only(bottom: kContainerPadding),
                    child: ResendOtpWidget(otpSentTime: otpSentTime!),
                  )
      ],
    );
  }
}
