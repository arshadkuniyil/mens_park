import 'dart:collection';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState.initial()) {
    String mobileNumber = '';
    on<SignUpWithPhoneEvent>((event, emit) async {
      mobileNumber = '91${event.userData['mobileNumber']}';
      emit(state.copyWith(
          signUpWithPhoneStatus: SignUpWithPhoneStatus.loading,
          mobileNumber: mobileNumber));

      await AuthService().signUpWithPhone(
          userData: event.userData,
          responseCallback: ({required responseCode}) {
            add(SignUpWithPhoneRes(responseCode: responseCode));
          });
    });

    on<SignUpWithPhoneRes>((event, emit) {
      emit(state);
      switch (event.responseCode) {
        case 'code-sent':
          emit(state.copyWith(
              signUpWithPhoneStatus: SignUpWithPhoneStatus.codeSent));
          break;
        case 'invalid-phone-number':
          emit(state.copyWith(
              signUpWithPhoneStatus: SignUpWithPhoneStatus.invalidPhoneNumber));
          break;
        case 'invalid-verification-id':
          emit(state.copyWith(
              signUpWithPhoneStatus:
                  SignUpWithPhoneStatus.invalidVerificationId));
          break;
        case 'network-request-failed':
          emit(state.copyWith(
              signUpWithPhoneStatus: SignUpWithPhoneStatus.networkError));
          break;
      }
    });

    on<SignUpResetEvent>((event, emit) {
      emit(state.copyWith(
          signUpWithPhoneStatus: SignUpWithPhoneStatus.notStarted));
    });
  }
}
