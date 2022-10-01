part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState(
      {
      required SignInStatus signInStatus}) = _SignInState;

  factory SignInState.initial() => const SignInState(
       signInStatus: SignInStatus.notStarted);
}
