part of 'splash_bloc.dart';

class SplashState {
 final UserSignInStatus userStatus;
  SplashState({
    required this.userStatus,
   
  });
}

class SplashInitial extends SplashState {
  SplashInitial() : super(userStatus: UserSignInStatus.loading);
}
