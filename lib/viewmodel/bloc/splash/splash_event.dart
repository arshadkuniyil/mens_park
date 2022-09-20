part of 'splash_bloc.dart';

class SplashEvent {}

class CheckUserEvent extends SplashEvent {
  final BuildContext context;

  CheckUserEvent({required this.context});
}
