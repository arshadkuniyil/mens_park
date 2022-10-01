import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/view/widgets/error/custom_error_widget.dart';
import 'package:mens_park/viewmodel/bloc/sign_up/sign_up_bloc.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';
import 'widgets/sign_up_with_phone_form.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final AuthService userService = AuthService();
  final HashMap userData = HashMap<String, String>();

  @override
  Widget build(BuildContext context) {
    final kPadding = getScreenWidth(context) * 0.025;
    return Scaffold(
      backgroundColor: kGrey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(kPadding),
          child: BlocConsumer<SignUpBloc, SignUpState>(
            listener: (context, state) {
              if (state.signUpWithPhoneStatus ==
                  SignUpWithPhoneStatus.codeSent) {
                Navigator.of(context)
                    .pushReplacementNamed('/otpVerificationScreen',);
              }
            },
            buildWhen: (previous, current) => current != previous,
            builder: (context, state) {
              switch (state.signUpWithPhoneStatus) {
                case SignUpWithPhoneStatus.networkError:
                  return CustomErrorWidget(
                    errorName: 'No internet connection',
                    errorDetails:
                        'Please connect your internet connection.\n      it looks like you\'re not connected to\n                          the internet',
                    retryFunc: () {
                      context.read<SignUpBloc>().add(SignUpWithPhoneEvent(
                          context: context, userData: userData));
                    },
                  );
                case SignUpWithPhoneStatus.notStarted:
                  return SignUpWIthPhoneForm(
                    userData: userData,
                    kPadding: kPadding,
                    userService: userService,
                    blocContext: context,
                  );

                case SignUpWithPhoneStatus.loading:
                  return const Center(child: CircularProgressIndicator());

                case SignUpWithPhoneStatus.invalidPhoneNumber:
                  return CustomErrorWidget(
                    errorName: 'Invalid Phone Number',
                    errorDetails: 'Please enter a valid phone number',
                    retryFunc: () {
                      context.read<SignUpBloc>().add(const SignUpResetEvent());
                    },
                  );
                case SignUpWithPhoneStatus.invalidVerificationId:
                  return CustomErrorWidget(
                    errorName: 'Invalid Verification Id',
                    errorDetails: 'Your request is not valid',
                    retryFunc: () {
                      context.read<SignUpBloc>().add(const SignUpResetEvent());
                    },
                  );
                default:
                  break;
              }
              return SignUpWIthPhoneForm(
                userData: userData,
                kPadding: kPadding,
                userService: userService,
                blocContext: context,
              );
            },
          ),
        ),
      ),
    );
  }
}
