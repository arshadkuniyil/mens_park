import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
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
        if (isPhoneVerified != null && isPhoneVerified) {
          emit(SplashState(userStatus: UserSignInStatus.userExist));
        }else{
          emit(SplashState(userStatus: UserSignInStatus.otpVerificationPending));
        }
      } else {
        emit(SplashState(userStatus: UserSignInStatus.userExist));
      }
    });
  }
}
