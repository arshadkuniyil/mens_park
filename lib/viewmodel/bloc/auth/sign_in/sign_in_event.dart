part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.startCountDown() = StartCountDown;
  
  const factory SignInEvent.signInWithOtp({required String otp}) =
      SignInWithOtp;
      
  const factory SignInEvent.resendOtp() = ResendOtp;
  
  const factory SignInEvent.resendOtpRes({required String responseCode}) =
      ResendOtpRes;
      
  const factory SignInEvent.signInWithGoogle() = SignInWithGoogle;
}
