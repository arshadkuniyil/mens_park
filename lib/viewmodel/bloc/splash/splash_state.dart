part of 'splash_bloc.dart';

class SplashState {
 final UserStatus userStatus;
  SplashState({
    required this.userStatus,
   
  });
}

class SplashInitial extends SplashState {
  SplashInitial() : super(userStatus: UserStatus.loading);
}
