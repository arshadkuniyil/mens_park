part of 'sign_up_bloc.dart';

class SignUpState {
  final SignUpWithPhoneError signUpWithPhoneError;
  final bool isLoading;

  SignUpState({required this.signUpWithPhoneError, required this.isLoading});
}

class SignUpInitial extends SignUpState {
  SignUpInitial()
      : super(
          signUpWithPhoneError: SignUpWithPhoneError.noError,
          isLoading: true,
        );
}
