part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUpWithPhoneEvent(
      {required HashMap userData,
      required BuildContext context}) = SignUpWithPhoneEvent;

  const factory SignUpEvent.signUpWithPhoneRes({required String responseCode}) =
      SignUpWithPhoneRes;

  const factory SignUpEvent.signUpResetEvent() = SignUpResetEvent;
}
