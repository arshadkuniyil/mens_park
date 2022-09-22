part of 'sign_up_bloc.dart';

class SignUpEvent {}

class SignUpWithPhoneEvent extends SignUpEvent {
  final HashMap userData;
  final BuildContext context;

  SignUpWithPhoneEvent(this.userData, this.context);
}
