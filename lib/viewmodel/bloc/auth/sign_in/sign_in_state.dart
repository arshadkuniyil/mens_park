part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required PhoneSignInStatus signInStatus,
    required int? otpSentTime,
    required String mobileNumber,
    required bool isSmsResending,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        signInStatus: PhoneSignInStatus.notStarted,
        otpSentTime: DateTime.now().millisecondsSinceEpoch,
        mobileNumber: '', isSmsResending: false,
      );
}
