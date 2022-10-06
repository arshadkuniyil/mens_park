part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState(
      {required SignUpWithPhoneStatus signUpWithPhoneStatus,required String mobileNumber}) = _SignUpState;

  factory SignUpState.initial() => const SignUpState(
      signUpWithPhoneStatus: SignUpWithPhoneStatus.notStarted, mobileNumber: '');
}
