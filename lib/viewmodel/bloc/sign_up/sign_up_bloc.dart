import 'dart:collection';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpWithPhoneEvent>((event, emit) async {
      emit(SignUpState(
          signUpWithPhoneError: SignUpWithPhoneError.noError, isLoading: true));

      SignUpWithPhoneError signUpWithPhoneRes =
          await AuthService().signUpWithPhone(event.userData, event.context);
      log(signUpWithPhoneRes.toString());

      if (signUpWithPhoneRes == SignUpWithPhoneError.noError) {
        emit(SignUpState(
            signUpWithPhoneError: SignUpWithPhoneError.noError,
            isLoading: false));
      } else {
        emit(
          SignUpState(
              signUpWithPhoneError: SignUpWithPhoneError.unknownError,
              isLoading: false),
        );
      }
    });
  }
}
