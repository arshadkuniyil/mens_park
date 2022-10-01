
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    final AuthService authService = AuthService();

    on<CheckUserEvent>((event, emit) async {
      emit(
        SplashState(isLoading: false, user: authService.getUser()),
      );
    });
  }
}
