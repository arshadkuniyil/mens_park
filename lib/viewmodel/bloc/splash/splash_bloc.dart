import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    final AuthService authService = AuthService();

    on<CheckUserEvent>((event, emit) async {
      if (authService.getUser() == null) {
        SharedPreferences sh = await SharedPreferences.getInstance();
        final isPhoneVerified = sh.getBool('isPhoneVerified');
        if (  isPhoneVerified == null ) {
          emit(SplashState(userStatus: UserStatus.userNotExist));
        }else if(!isPhoneVerified){
          emit(SplashState(userStatus: UserStatus.otpVerificationPending));
        }
      } else {
        emit(SplashState(userStatus: UserStatus.userExist));
      }
    });
  }
}
