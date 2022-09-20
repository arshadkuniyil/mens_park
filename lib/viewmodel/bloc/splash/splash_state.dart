part of 'splash_bloc.dart';

class SplashState {
  final bool isLoading;
  final ErrorEnum errorEnum;

  SplashState({
    required this.errorEnum,
    required this.isLoading,
  });
}

class SplashInitial extends SplashState {
  SplashInitial() : super(isLoading: true, errorEnum: ErrorEnum.noError);
}
