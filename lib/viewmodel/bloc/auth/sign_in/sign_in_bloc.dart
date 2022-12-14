import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mens_park/res/global/global.dart';
import 'package:mens_park/services/auth_services.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(AuthService authService) : super(SignInState.initial()) {
    
    on<SignInWithOtp>((event, emit) async {
      emit(state.copyWith(signInStatus: PhoneSignInStatus.loading));

      final signInStatus = await authService.signInWithPhoneOtp(event.otp);
      if (signInStatus == PhoneSignInStatus.invalidVerificationCode) {
        snackbarKey.currentState
            ?.showSnackBar(const SnackBar(content: Text('Invalid code')));
        emit(state.copyWith(signInStatus: PhoneSignInStatus.notStarted));
      } else if (signInStatus == PhoneSignInStatus.success) {
        
        navigatorKey.currentState?.pushReplacementNamed('/home');
        add(const ResetSignInUI());
      }
    });

    on<SignInWithGoogle>((event, emit) async {
      final userCredential = await authService.signInWithGoogle();

      if (userCredential.user != null) {
        navigatorKey.currentState?.pushReplacementNamed('/home');
      } else {
        snackbarKey.currentState?.showSnackBar(const SnackBar(
          content: Text('Sign in Failed'),
        ));
      }
    });

    on<StartCountDown>((event, emit) async {
      SharedPreferences sh = await SharedPreferences.getInstance();
      final int otpSentTime =
          sh.getInt('otpSentTime') ?? DateTime.now().millisecondsSinceEpoch;

      final String mobileNumber = sh.getString('mobileNumber') ?? '';

      emit(state.copyWith(
          mobileNumber: mobileNumber,
          otpSentTime: otpSentTime,
          isSmsResending: false));
    });

    on<ResendOtp>((event, emit) async {
      await authService.resendOtp(
        responseCallback: ({required responseCode}) {
          add(ResendOtpRes(responseCode: responseCode));
        },
      );
      emit(state.copyWith(isSmsResending: true));
    });

    on<ResendOtpRes>((event, emit) async {
      SharedPreferences sh = await SharedPreferences.getInstance();

      switch (event.responseCode) {
        case 'code-resent':
          final int otpSentTime =
              sh.getInt('otpSentTime') ?? DateTime.now().millisecondsSinceEpoch;

          final String mobileNumber = sh.getString('mobileNumber') ?? '';

          emit(state.copyWith(
            mobileNumber: mobileNumber,
            otpSentTime: otpSentTime,
            isSmsResending: false,
            signInStatus: PhoneSignInStatus.codeResent,
          ));
          break;

        case 'invalid-verification-id':
          emit(state.copyWith(
            signInStatus: PhoneSignInStatus.invalidVerificationId,
            isSmsResending: false,
          ));
          break;

        case 'network-request-failed':
          emit(state.copyWith(
            signInStatus: PhoneSignInStatus.networkError,
            isSmsResending: false,
          ));
          break;

        case 'sms-limit-exceed':
          emit(state.copyWith(
            signInStatus: PhoneSignInStatus.smsLimitExceed,
            isSmsResending: false,
          ));
          break;

        default:
          emit(state.copyWith(
            signInStatus: PhoneSignInStatus.unknownError,
            isSmsResending: false,
          ));
      }
    });

    on<ResetSignInUI>((event, emit) {
      emit(state.copyWith(
        otpSentTime: null,
        signInStatus: PhoneSignInStatus.notStarted,
      ));
    });
  }
}
