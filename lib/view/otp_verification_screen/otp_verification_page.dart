import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/utils/global/global.dart';
import 'package:mens_park/view/widgets/error/custom_error_widget.dart';
import 'package:mens_park/view/widgets/text_field_outer_widget.dart';
import 'package:mens_park/viewmodel/bloc/auth/sign_in/sign_in_bloc.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widgets/number_and_resend_row.dart';

class OtpVerificationPage extends StatelessWidget {
  OtpVerificationPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SignInBloc>().add(const StartCountDown());
    });

    final double screenWidth = getScreenWidth(context);
    final kContainerPadding = getScreenWidth(context) * 0.025;
    String otp = '';

    return Scaffold(
      backgroundColor: kGrey,
      body: SafeArea(
        child: BlocConsumer<SignInBloc, SignInState>(
          listener: (context, state) {},
          builder: (context, state) {
            final signInStatus = state.signInStatus;
         
            if (signInStatus == PhoneSignInStatus.invalidVerificationId) {
              return CustomErrorWidget(
                errorName: 'Invalid Verification Id',
                errorDetails: 'Your request is not valid',
                retryFunc: () {
                  Navigator.of(context).pushReplacementNamed('/signUp');
                },
              );
            } else if (signInStatus == PhoneSignInStatus.networkError) {
              return CustomErrorWidget(
                errorName: 'No internet connection',
                errorDetails:
                    'Please connect your internet connection.\n      it looks like you\'re not connected to\n                          the internet',
                retryFunc: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<SignInBloc>().add(SignInWithOtp(otp: otp));
                  }
                },
              );
            } else if (signInStatus == PhoneSignInStatus.smsLimitExceed) {
             return  CustomErrorWidget(
                errorName: 'Resend limit exceed',
                errorDetails: 'Try again later',
                retryFunc: () async {
                  final SharedPreferences sh =
                      await SharedPreferences.getInstance();
                  sh.remove('isPhoneVerified');
                  sh.remove('smsSentCount');
                  navigatorKey.currentState?.pushReplacementNamed('/signUp');
                },
              );
            } else if (signInStatus == PhoneSignInStatus.unknownError) {
              return CustomErrorWidget(
                errorName: 'Unknown Error',
                errorDetails: 'Try again later',
                retryFunc: () async {
                  final SharedPreferences sh =
                      await SharedPreferences.getInstance();
                  sh.remove('isPhoneVerified');
                  sh.remove('smsSentCount');
                  navigatorKey.currentState?.pushReplacementNamed('/signUp');
                },
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Image(
                    width: 150,
                    image: AssetImage('assets/images/logo_sample.png'),
                  ),
                ),
                const Spacer(),
                Container(
                  height: screenWidth * .22,
                  margin: EdgeInsets.all(kContainerPadding),
                  padding: EdgeInsets.fromLTRB(kContainerPadding,
                      kContainerPadding, kContainerPadding, 0),
                  decoration: BoxDecoration(
                      color: kWhite, borderRadius: BorderRadius.circular(8)),
                  child: NumberAndResendRow(
                    kContainerPadding: kContainerPadding,
                    mobileNumber: state.mobileNumber,
                    otpSentTime: state.otpSentTime, isSmsResending: state.isSmsResending,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * .1),
                  child: TextFieldOuter(
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter otp';
                          } else if (value.length < 6) {
                            return 'Please enter 6 digit otp';
                          }
                          return null;
                        },
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: screenWidth * .1 + 10),
                        child: signInStatus == PhoneSignInStatus.loading
                            ? const CircularProgressIndicator()
                            : ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    context
                                        .read<SignInBloc>()
                                        .add(SignInWithOtp(otp: otp));
                                  }
                                },
                                child: const Text('Submit'),
                              )),
                  ],
                ),
                const Spacer()
              ],
            );
          },
        ),
      ),
    );
  }
}
