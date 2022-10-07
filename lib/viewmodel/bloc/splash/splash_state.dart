part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
 const factory SplashState({
    required UserStatus userStatus,
  }) = _SplashState;
   factory SplashState.initial() => const SplashState(userStatus: UserStatus.loading);
}
