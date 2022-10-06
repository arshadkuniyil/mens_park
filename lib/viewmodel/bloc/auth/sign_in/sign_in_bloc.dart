import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mens_park/utils/global/global.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState.initial()) {
    AuthService authService = AuthService();

    on<SignInWithOtp>((event, emit) async {
      emit(state.copyWith(signInStatus: PhoneSignInStatus.loading));

      final signInStatus = await authService.signInWithPhoneOtp(event.otp);

      if (signInStatus == PhoneSignInStatus.invalidVerificationCode) {
        snackbarKey.currentState
            ?.showSnackBar(const SnackBar(content: Text('Invalid code')));
      } else if (signInStatus == PhoneSignInStatus.success) {
        emit(state.copyWith(otpSentTime: null));
        navigatorKey.currentState?.pushReplacementNamed('/home');
      }

      emit(state.copyWith(signInStatus: signInStatus));
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
      await authService.resendOtp(responseCallback: ({required responseCode}) {
        add(ResendOtpRes(responseCode: responseCode));
      },);
      emit(state.copyWith(isSmsResending: true));
    });

    on<ResendOtpRes>((event, emit) async {
      SharedPreferences sh = await SharedPreferences.getInstance();
      log('resendotp${event.responseCode}');
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
  }
}
