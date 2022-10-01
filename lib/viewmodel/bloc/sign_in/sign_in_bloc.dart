import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState.initial()) {
    AuthService authService = AuthService();
    on<SignInWithOtp>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      
      final signInStatus = await authService.signInWithPhoneOtp(event.otp);
      
      emit(state.copyWith(signInStatus: signInStatus, isLoading: false));
    });
  }
}
