import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mens_park/utils/colors.dart';

import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/view/widgets/text_field_outer_widget.dart';
import 'package:mens_park/viewmodel/bloc/sign_in/sign_in_bloc.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final double screenWidth = getScreenWidth(context);

    String otp = '';

    return Scaffold(
      backgroundColor: kGrey,
      body: SafeArea(
        child: BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) {
            log("${state.signInStatus.toString()}");
            if (state.signInStatus == SignInStatus.success) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.pushReplacementNamed(context, '/home');
              });
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                 const Align(
                  alignment: Alignment.centerLeft,
                  child: Image(
                    width: 150,
                    image: AssetImage('assets/images/logo_sample.png'),
                  ),
                ),
                const Spacer(),
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
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * .1 + 10),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.validate();

                        context
                            .read<SignInBloc>()
                            .add(SignInEvent.signInWithOtp(otp: otp));
                      }
                    },
                    child: state.isLoading
                        ? const CircularProgressIndicator()
                        : const Text('Submit'),
                  ),
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
