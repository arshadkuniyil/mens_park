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
          child: BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              switch (state.signUpWithPhoneStatus) {
                case SignUpWithPhoneStatus.codeSent:
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.of(context)
                        .pushReplacementNamed('/otpVerificationScreen');
                  });
                  break;
                case SignUpWithPhoneStatus.networkError:
                  return CustomErrorWidget(
                    errorName: 'No internet connection',
                    errorDetails:
                        'Please connect your internet connection.\n      it looks like you\'re not connected to\n                          the internet',
                    event: SignUpWithPhoneEvent(context: context,userData: userData),
                    readBloc: context.read<SignUpBloc>(),
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
                  return  CustomErrorWidget(
                    errorName: 'Invalid Phone Number',
                    errorDetails:
                        'Please enter a valid phone number',
                    event: const SignUpResetEvent(),
                    readBloc: context.read<SignUpBloc>(),
                  );
                case SignUpWithPhoneStatus.invalidVerificationId:
                  return     CustomErrorWidget(
                    errorName: 'Invalid Verification Id',
                    errorDetails:
                        'Your request not valid',
                    event: const SignUpResetEvent(),
                    readBloc: context.read<SignUpBloc>(),
                  );
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
