// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startCountDown,
    required TResult Function(String otp) signInWithOtp,
    required TResult Function() resendOtp,
    required TResult Function(String responseCode) resendOtpRes,
    required TResult Function() signInWithGoogle,
    required TResult Function() resetSignInUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCountDown value) startCountDown,
    required TResult Function(SignInWithOtp value) signInWithOtp,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(ResendOtpRes value) resendOtpRes,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ResetSignInUI value) resetSignInUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class _$$StartCountDownCopyWith<$Res> {
  factory _$$StartCountDownCopyWith(
          _$StartCountDown value, $Res Function(_$StartCountDown) then) =
      __$$StartCountDownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartCountDownCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$StartCountDownCopyWith<$Res> {
  __$$StartCountDownCopyWithImpl(
      _$StartCountDown _value, $Res Function(_$StartCountDown) _then)
      : super(_value, (v) => _then(v as _$StartCountDown));

  @override
  _$StartCountDown get _value => super._value as _$StartCountDown;
}

/// @nodoc

class _$StartCountDown implements StartCountDown {
  const _$StartCountDown();

  @override
  String toString() {
    return 'SignInEvent.startCountDown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartCountDown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startCountDown,
    required TResult Function(String otp) signInWithOtp,
    required TResult Function() resendOtp,
    required TResult Function(String responseCode) resendOtpRes,
    required TResult Function() signInWithGoogle,
    required TResult Function() resetSignInUI,
  }) {
    return startCountDown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
  }) {
    return startCountDown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
    required TResult orElse(),
  }) {
    if (startCountDown != null) {
      return startCountDown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCountDown value) startCountDown,
    required TResult Function(SignInWithOtp value) signInWithOtp,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(ResendOtpRes value) resendOtpRes,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ResetSignInUI value) resetSignInUI,
  }) {
    return startCountDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
  }) {
    return startCountDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
    required TResult orElse(),
  }) {
    if (startCountDown != null) {
      return startCountDown(this);
    }
    return orElse();
  }
}

abstract class StartCountDown implements SignInEvent {
  const factory StartCountDown() = _$StartCountDown;
}

/// @nodoc
abstract class _$$SignInWithOtpCopyWith<$Res> {
  factory _$$SignInWithOtpCopyWith(
          _$SignInWithOtp value, $Res Function(_$SignInWithOtp) then) =
      __$$SignInWithOtpCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class __$$SignInWithOtpCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$SignInWithOtpCopyWith<$Res> {
  __$$SignInWithOtpCopyWithImpl(
      _$SignInWithOtp _value, $Res Function(_$SignInWithOtp) _then)
      : super(_value, (v) => _then(v as _$SignInWithOtp));

  @override
  _$SignInWithOtp get _value => super._value as _$SignInWithOtp;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_$SignInWithOtp(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInWithOtp implements SignInWithOtp {
  const _$SignInWithOtp({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'SignInEvent.signInWithOtp(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithOtp &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$$SignInWithOtpCopyWith<_$SignInWithOtp> get copyWith =>
      __$$SignInWithOtpCopyWithImpl<_$SignInWithOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startCountDown,
    required TResult Function(String otp) signInWithOtp,
    required TResult Function() resendOtp,
    required TResult Function(String responseCode) resendOtpRes,
    required TResult Function() signInWithGoogle,
    required TResult Function() resetSignInUI,
  }) {
    return signInWithOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
  }) {
    return signInWithOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
    required TResult orElse(),
  }) {
    if (signInWithOtp != null) {
      return signInWithOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCountDown value) startCountDown,
    required TResult Function(SignInWithOtp value) signInWithOtp,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(ResendOtpRes value) resendOtpRes,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ResetSignInUI value) resetSignInUI,
  }) {
    return signInWithOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
  }) {
    return signInWithOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
    required TResult orElse(),
  }) {
    if (signInWithOtp != null) {
      return signInWithOtp(this);
    }
    return orElse();
  }
}

abstract class SignInWithOtp implements SignInEvent {
  const factory SignInWithOtp({required final String otp}) = _$SignInWithOtp;

  String get otp;
  @JsonKey(ignore: true)
  _$$SignInWithOtpCopyWith<_$SignInWithOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpCopyWith<$Res> {
  factory _$$ResendOtpCopyWith(
          _$ResendOtp value, $Res Function(_$ResendOtp) then) =
      __$$ResendOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendOtpCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$$ResendOtpCopyWith<$Res> {
  __$$ResendOtpCopyWithImpl(
      _$ResendOtp _value, $Res Function(_$ResendOtp) _then)
      : super(_value, (v) => _then(v as _$ResendOtp));

  @override
  _$ResendOtp get _value => super._value as _$ResendOtp;
}

/// @nodoc

class _$ResendOtp implements ResendOtp {
  const _$ResendOtp();

  @override
  String toString() {
    return 'SignInEvent.resendOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startCountDown,
    required TResult Function(String otp) signInWithOtp,
    required TResult Function() resendOtp,
    required TResult Function(String responseCode) resendOtpRes,
    required TResult Function() signInWithGoogle,
    required TResult Function() resetSignInUI,
  }) {
    return resendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
  }) {
    return resendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCountDown value) startCountDown,
    required TResult Function(SignInWithOtp value) signInWithOtp,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(ResendOtpRes value) resendOtpRes,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ResetSignInUI value) resetSignInUI,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class ResendOtp implements SignInEvent {
  const factory ResendOtp() = _$ResendOtp;
}

/// @nodoc
abstract class _$$ResendOtpResCopyWith<$Res> {
  factory _$$ResendOtpResCopyWith(
          _$ResendOtpRes value, $Res Function(_$ResendOtpRes) then) =
      __$$ResendOtpResCopyWithImpl<$Res>;
  $Res call({String responseCode});
}

/// @nodoc
class __$$ResendOtpResCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$$ResendOtpResCopyWith<$Res> {
  __$$ResendOtpResCopyWithImpl(
      _$ResendOtpRes _value, $Res Function(_$ResendOtpRes) _then)
      : super(_value, (v) => _then(v as _$ResendOtpRes));

  @override
  _$ResendOtpRes get _value => super._value as _$ResendOtpRes;

  @override
  $Res call({
    Object? responseCode = freezed,
  }) {
    return _then(_$ResendOtpRes(
      responseCode: responseCode == freezed
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResendOtpRes implements ResendOtpRes {
  const _$ResendOtpRes({required this.responseCode});

  @override
  final String responseCode;

  @override
  String toString() {
    return 'SignInEvent.resendOtpRes(responseCode: $responseCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpRes &&
            const DeepCollectionEquality()
                .equals(other.responseCode, responseCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(responseCode));

  @JsonKey(ignore: true)
  @override
  _$$ResendOtpResCopyWith<_$ResendOtpRes> get copyWith =>
      __$$ResendOtpResCopyWithImpl<_$ResendOtpRes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startCountDown,
    required TResult Function(String otp) signInWithOtp,
    required TResult Function() resendOtp,
    required TResult Function(String responseCode) resendOtpRes,
    required TResult Function() signInWithGoogle,
    required TResult Function() resetSignInUI,
  }) {
    return resendOtpRes(responseCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
  }) {
    return resendOtpRes?.call(responseCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
    required TResult orElse(),
  }) {
    if (resendOtpRes != null) {
      return resendOtpRes(responseCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCountDown value) startCountDown,
    required TResult Function(SignInWithOtp value) signInWithOtp,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(ResendOtpRes value) resendOtpRes,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ResetSignInUI value) resetSignInUI,
  }) {
    return resendOtpRes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
  }) {
    return resendOtpRes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
    required TResult orElse(),
  }) {
    if (resendOtpRes != null) {
      return resendOtpRes(this);
    }
    return orElse();
  }
}

abstract class ResendOtpRes implements SignInEvent {
  const factory ResendOtpRes({required final String responseCode}) =
      _$ResendOtpRes;

  String get responseCode;
  @JsonKey(ignore: true)
  _$$ResendOtpResCopyWith<_$ResendOtpRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithGoogleCopyWith<$Res> {
  factory _$$SignInWithGoogleCopyWith(
          _$SignInWithGoogle value, $Res Function(_$SignInWithGoogle) then) =
      __$$SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$SignInWithGoogleCopyWith<$Res> {
  __$$SignInWithGoogleCopyWithImpl(
      _$SignInWithGoogle _value, $Res Function(_$SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as _$SignInWithGoogle));

  @override
  _$SignInWithGoogle get _value => super._value as _$SignInWithGoogle;
}

/// @nodoc

class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'SignInEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startCountDown,
    required TResult Function(String otp) signInWithOtp,
    required TResult Function() resendOtp,
    required TResult Function(String responseCode) resendOtpRes,
    required TResult Function() signInWithGoogle,
    required TResult Function() resetSignInUI,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCountDown value) startCountDown,
    required TResult Function(SignInWithOtp value) signInWithOtp,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(ResendOtpRes value) resendOtpRes,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ResetSignInUI value) resetSignInUI,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements SignInEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

/// @nodoc
abstract class _$$ResetSignInUICopyWith<$Res> {
  factory _$$ResetSignInUICopyWith(
          _$ResetSignInUI value, $Res Function(_$ResetSignInUI) then) =
      __$$ResetSignInUICopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSignInUICopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$ResetSignInUICopyWith<$Res> {
  __$$ResetSignInUICopyWithImpl(
      _$ResetSignInUI _value, $Res Function(_$ResetSignInUI) _then)
      : super(_value, (v) => _then(v as _$ResetSignInUI));

  @override
  _$ResetSignInUI get _value => super._value as _$ResetSignInUI;
}

/// @nodoc

class _$ResetSignInUI implements ResetSignInUI {
  const _$ResetSignInUI();

  @override
  String toString() {
    return 'SignInEvent.resetSignInUI()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSignInUI);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startCountDown,
    required TResult Function(String otp) signInWithOtp,
    required TResult Function() resendOtp,
    required TResult Function(String responseCode) resendOtpRes,
    required TResult Function() signInWithGoogle,
    required TResult Function() resetSignInUI,
  }) {
    return resetSignInUI();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
  }) {
    return resetSignInUI?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startCountDown,
    TResult Function(String otp)? signInWithOtp,
    TResult Function()? resendOtp,
    TResult Function(String responseCode)? resendOtpRes,
    TResult Function()? signInWithGoogle,
    TResult Function()? resetSignInUI,
    required TResult orElse(),
  }) {
    if (resetSignInUI != null) {
      return resetSignInUI();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCountDown value) startCountDown,
    required TResult Function(SignInWithOtp value) signInWithOtp,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(ResendOtpRes value) resendOtpRes,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ResetSignInUI value) resetSignInUI,
  }) {
    return resetSignInUI(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
  }) {
    return resetSignInUI?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCountDown value)? startCountDown,
    TResult Function(SignInWithOtp value)? signInWithOtp,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(ResendOtpRes value)? resendOtpRes,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ResetSignInUI value)? resetSignInUI,
    required TResult orElse(),
  }) {
    if (resetSignInUI != null) {
      return resetSignInUI(this);
    }
    return orElse();
  }
}

abstract class ResetSignInUI implements SignInEvent {
  const factory ResetSignInUI() = _$ResetSignInUI;
}

/// @nodoc
mixin _$SignInState {
  PhoneSignInStatus get signInStatus => throw _privateConstructorUsedError;
  int? get otpSentTime => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  bool get isSmsResending => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {PhoneSignInStatus signInStatus,
      int? otpSentTime,
      String mobileNumber,
      bool isSmsResending});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? signInStatus = freezed,
    Object? otpSentTime = freezed,
    Object? mobileNumber = freezed,
    Object? isSmsResending = freezed,
  }) {
    return _then(_value.copyWith(
      signInStatus: signInStatus == freezed
          ? _value.signInStatus
          : signInStatus // ignore: cast_nullable_to_non_nullable
              as PhoneSignInStatus,
      otpSentTime: otpSentTime == freezed
          ? _value.otpSentTime
          : otpSentTime // ignore: cast_nullable_to_non_nullable
              as int?,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isSmsResending: isSmsResending == freezed
          ? _value.isSmsResending
          : isSmsResending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PhoneSignInStatus signInStatus,
      int? otpSentTime,
      String mobileNumber,
      bool isSmsResending});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, (v) => _then(v as _$_SignInState));

  @override
  _$_SignInState get _value => super._value as _$_SignInState;

  @override
  $Res call({
    Object? signInStatus = freezed,
    Object? otpSentTime = freezed,
    Object? mobileNumber = freezed,
    Object? isSmsResending = freezed,
  }) {
    return _then(_$_SignInState(
      signInStatus: signInStatus == freezed
          ? _value.signInStatus
          : signInStatus // ignore: cast_nullable_to_non_nullable
              as PhoneSignInStatus,
      otpSentTime: otpSentTime == freezed
          ? _value.otpSentTime
          : otpSentTime // ignore: cast_nullable_to_non_nullable
              as int?,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isSmsResending: isSmsResending == freezed
          ? _value.isSmsResending
          : isSmsResending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.signInStatus,
      required this.otpSentTime,
      required this.mobileNumber,
      required this.isSmsResending});

  @override
  final PhoneSignInStatus signInStatus;
  @override
  final int? otpSentTime;
  @override
  final String mobileNumber;
  @override
  final bool isSmsResending;

  @override
  String toString() {
    return 'SignInState(signInStatus: $signInStatus, otpSentTime: $otpSentTime, mobileNumber: $mobileNumber, isSmsResending: $isSmsResending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            const DeepCollectionEquality()
                .equals(other.signInStatus, signInStatus) &&
            const DeepCollectionEquality()
                .equals(other.otpSentTime, otpSentTime) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.isSmsResending, isSmsResending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(signInStatus),
      const DeepCollectionEquality().hash(otpSentTime),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(isSmsResending));

  @JsonKey(ignore: true)
  @override
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final PhoneSignInStatus signInStatus,
      required final int? otpSentTime,
      required final String mobileNumber,
      required final bool isSmsResending}) = _$_SignInState;

  @override
  PhoneSignInStatus get signInStatus;
  @override
  int? get otpSentTime;
  @override
  String get mobileNumber;
  @override
  bool get isSmsResending;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
