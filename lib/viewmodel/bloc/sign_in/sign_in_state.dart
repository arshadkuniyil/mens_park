part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState(
      {required bool isLoading,
      required SignInStatus signInStatus}) = _SignInState;

  factory SignInState.initial() => const SignInState(
      isLoading: false, signInStatus: SignInStatus.loading);
}
