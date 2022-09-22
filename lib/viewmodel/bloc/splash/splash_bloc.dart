import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    //
    final AuthService authService = AuthService();

    on<CheckUserEvent>((event, emit) async {
      //
log('spalsh');
     
      emit(
        SplashState(errorEnum: ErrorEnum.noError, isLoading: true),
      );

      if (authService.getUser() == null) {
        ErrorEnum signInStatus = await authService.anonymousSignIn();

        if (signInStatus == ErrorEnum.networkError) {
          //
          emit(
            SplashState(
              errorEnum: ErrorEnum.networkError,
              isLoading: false,
            ),
          );
        } else if (signInStatus == ErrorEnum.unknownError) {
          emit(
            SplashState(errorEnum: ErrorEnum.unknownError, isLoading: false),
          );
        } else {
          emit(
            SplashState(errorEnum: ErrorEnum.noError, isLoading: false),
          );
        }
      } else {
         emit(
          SplashState(errorEnum: ErrorEnum.noError, isLoading: false),
        );
        
      }
    });
  }
}
