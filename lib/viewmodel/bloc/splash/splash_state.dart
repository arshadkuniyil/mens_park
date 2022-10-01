part of 'splash_bloc.dart';

class SplashState {
  final bool isLoading;
  final User? user;
  SplashState({
    required this.isLoading,
    required this.user,
  });
}

class SplashInitial extends SplashState {
  SplashInitial() : super(isLoading: true, user: null);
}
