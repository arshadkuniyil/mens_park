import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mens_park/services/auth_services.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(AuthService authService) : super(SplashState.initial()) {
    
    on<CheckUserEvent>((event, emit) async {
     if (authService.getUser() == null) {
        SharedPreferences sh = await SharedPreferences.getInstance();
        final isPhoneVerified = sh.getBool('isPhoneVerified');
        if (  isPhoneVerified == null ) {
          emit(const SplashState(userStatus: UserStatus.userNotExist));
        }else if(!isPhoneVerified){
          emit(const SplashState(userStatus: UserStatus.otpVerificationPending));
        }
      } else {
        emit(const SplashState(userStatus: UserStatus.userExist));
      }
    });
  }
}
