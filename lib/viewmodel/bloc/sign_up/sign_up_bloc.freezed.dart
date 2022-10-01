// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            HashMap<dynamic, dynamic> userData, BuildContext context)
        signUpWithPhoneEvent,
    required TResult Function(String responseCode) signUpWithPhoneRes,
    required TResult Function() signUpResetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HashMap<dynamic, dynamic> userData, BuildContext context)?
        signUpWithPhoneEvent,
    TResult Function(String responseCode)? signUpWithPhoneRes,
    TResult Function()? signUpResetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HashMap<dynamic, dynamic> userData, BuildContext context)?
        signUpWithPhoneEvent,
    TResult Function(String responseCode)? signUpWithPhoneRes,
    TResult Function()? signUpResetEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithPhoneEvent value) signUpWithPhoneEvent,
    required TResult Function(SignUpWithPhoneRes value) signUpWithPhoneRes,
    required TResult Function(SignUpResetEvent value) signUpResetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpWithPhoneEvent value)? signUpWithPhoneEvent,
    TResult Function(SignUpWithPhoneRes value)? signUpWithPhoneRes,
    TResult Function(SignUpResetEvent value)? signUpResetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithPhoneEvent value)? signUpWithPhoneEvent,
    TResult Function(SignUpWithPhoneRes value)? signUpWithPhoneRes,
    TResult Function(SignUpResetEvent value)? signUpResetEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class _$$SignUpWithPhoneEventCopyWith<$Res> {
  factory _$$SignUpWithPhoneEventCopyWith(_$SignUpWithPhoneEvent value,
          $Res Function(_$SignUpWithPhoneEvent) then) =
      __$$SignUpWithPhoneEventCopyWithImpl<$Res>;
  $Res call({HashMap<dynamic, dynamic> userData, BuildContext context});
}

/// @nodoc
class __$$SignUpWithPhoneEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$SignUpWithPhoneEventCopyWith<$Res> {
  __$$SignUpWithPhoneEventCopyWithImpl(_$SignUpWithPhoneEvent _value,
      $Res Function(_$SignUpWithPhoneEvent) _then)
      : super(_value, (v) => _then(v as _$SignUpWithPhoneEvent));

  @override
  _$SignUpWithPhoneEvent get _value => super._value as _$SignUpWithPhoneEvent;

  @override
  $Res call({
    Object? userData = freezed,
    Object? context = freezed,
  }) {
    return _then(_$SignUpWithPhoneEvent(
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as HashMap<dynamic, dynamic>,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SignUpWithPhoneEvent implements SignUpWithPhoneEvent {
  const _$SignUpWithPhoneEvent({required this.userData, required this.context});

  @override
  final HashMap<dynamic, dynamic> userData;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SignUpEvent.signUpWithPhoneEvent(userData: $userData, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpWithPhoneEvent &&
            const DeepCollectionEquality().equals(other.userData, userData) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userData),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$SignUpWithPhoneEventCopyWith<_$SignUpWithPhoneEvent> get copyWith =>
      __$$SignUpWithPhoneEventCopyWithImpl<_$SignUpWithPhoneEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            HashMap<dynamic, dynamic> userData, BuildContext context)
        signUpWithPhoneEvent,
    required TResult Function(String responseCode) signUpWithPhoneRes,
    required TResult Function() signUpResetEvent,
  }) {
    return signUpWithPhoneEvent(userData, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HashMap<dynamic, dynamic> userData, BuildContext context)?
        signUpWithPhoneEvent,
    TResult Function(String responseCode)? signUpWithPhoneRes,
    TResult Function()? signUpResetEvent,
  }) {
    return signUpWithPhoneEvent?.call(userData, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HashMap<dynamic, dynamic> userData, BuildContext context)?
        signUpWithPhoneEvent,
    TResult Function(String responseCode)? signUpWithPhoneRes,
    TResult Function()? signUpResetEvent,
    required TResult orElse(),
  }) {
    if (signUpWithPhoneEvent != null) {
      return signUpWithPhoneEvent(userData, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithPhoneEvent value) signUpWithPhoneEvent,
    required TResult Function(SignUpWithPhoneRes value) signUpWithPhoneRes,
    required TResult Function(SignUpResetEvent value) signUpResetEvent,
  }) {
    return signUpWithPhoneEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpWithPhoneEvent value)? signUpWithPhoneEvent,
    TResult Function(SignUpWithPhoneRes value)? signUpWithPhoneRes,
    TResult Function(SignUpResetEvent value)? signUpResetEvent,
  }) {
    return signUpWithPhoneEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithPhoneEvent value)? signUpWithPhoneEvent,
    TResult Function(SignUpWithPhoneRes value)? signUpWithPhoneRes,
    TResult Function(SignUpResetEvent value)? signUpResetEvent,
    required TResult orElse(),
  }) {
    if (signUpWithPhoneEvent != null) {
      return signUpWithPhoneEvent(this);
    }
    return orElse();
  }
}

abstract class SignUpWithPhoneEvent implements SignUpEvent {
  const factory SignUpWithPhoneEvent(
      {required final HashMap<dynamic, dynamic> userData,
      required final BuildContext context}) = _$SignUpWithPhoneEvent;

  HashMap<dynamic, dynamic> get userData;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$SignUpWithPhoneEventCopyWith<_$SignUpWithPhoneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpWithPhoneResCopyWith<$Res> {
  factory _$$SignUpWithPhoneResCopyWith(_$SignUpWithPhoneRes value,
          $Res Function(_$SignUpWithPhoneRes) then) =
      __$$SignUpWithPhoneResCopyWithImpl<$Res>;
  $Res call({String responseCode});
}

/// @nodoc
class __$$SignUpWithPhoneResCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$SignUpWithPhoneResCopyWith<$Res> {
  __$$SignUpWithPhoneResCopyWithImpl(
      _$SignUpWithPhoneRes _value, $Res Function(_$SignUpWithPhoneRes) _then)
      : super(_value, (v) => _then(v as _$SignUpWithPhoneRes));

  @override
  _$SignUpWithPhoneRes get _value => super._value as _$SignUpWithPhoneRes;

  @override
  $Res call({
    Object? responseCode = freezed,
  }) {
    return _then(_$SignUpWithPhoneRes(
      responseCode: responseCode == freezed
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpWithPhoneRes implements SignUpWithPhoneRes {
  const _$SignUpWithPhoneRes({required this.responseCode});

  @override
  final String responseCode;

  @override
  String toString() {
    return 'SignUpEvent.signUpWithPhoneRes(responseCode: $responseCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpWithPhoneRes &&
            const DeepCollectionEquality()
                .equals(other.responseCode, responseCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(responseCode));

  @JsonKey(ignore: true)
  @override
  _$$SignUpWithPhoneResCopyWith<_$SignUpWithPhoneRes> get copyWith =>
      __$$SignUpWithPhoneResCopyWithImpl<_$SignUpWithPhoneRes>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            HashMap<dynamic, dynamic> userData, BuildContext context)
        signUpWithPhoneEvent,
    required TResult Function(String responseCode) signUpWithPhoneRes,
    required TResult Function() signUpResetEvent,
  }) {
    return signUpWithPhoneRes(responseCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HashMap<dynamic, dynamic> userData, BuildContext context)?
        signUpWithPhoneEvent,
    TResult Function(String responseCode)? signUpWithPhoneRes,
    TResult Function()? signUpResetEvent,
  }) {
    return signUpWithPhoneRes?.call(responseCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HashMap<dynamic, dynamic> userData, BuildContext context)?
        signUpWithPhoneEvent,
    TResult Function(String responseCode)? signUpWithPhoneRes,
    TResult Function()? signUpResetEvent,
    required TResult orElse(),
  }) {
    if (signUpWithPhoneRes != null) {
      return signUpWithPhoneRes(responseCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithPhoneEvent value) signUpWithPhoneEvent,
    required TResult Function(SignUpWithPhoneRes value) signUpWithPhoneRes,
    required TResult Function(SignUpResetEvent value) signUpResetEvent,
  }) {
    return signUpWithPhoneRes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpWithPhoneEvent value)? signUpWithPhoneEvent,
    TResult Function(SignUpWithPhoneRes value)? signUpWithPhoneRes,
    TResult Function(SignUpResetEvent value)? signUpResetEvent,
  }) {
    return signUpWithPhoneRes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithPhoneEvent value)? signUpWithPhoneEvent,
    TResult Function(SignUpWithPhoneRes value)? signUpWithPhoneRes,
    TResult Function(SignUpResetEvent value)? signUpResetEvent,
    required TResult orElse(),
  }) {
    if (signUpWithPhoneRes != null) {
      return signUpWithPhoneRes(this);
    }
    return orElse();
  }
}

abstract class SignUpWithPhoneRes implements SignUpEvent {
  const factory SignUpWithPhoneRes({required final String responseCode}) =
      _$SignUpWithPhoneRes;

  String get responseCode;
  @JsonKey(ignore: true)
  _$$SignUpWithPhoneResCopyWith<_$SignUpWithPhoneRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpResetEventCopyWith<$Res> {
  factory _$$SignUpResetEventCopyWith(
          _$SignUpResetEvent value, $Res Function(_$SignUpResetEvent) then) =
      __$$SignUpResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpResetEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$SignUpResetEventCopyWith<$Res> {
  __$$SignUpResetEventCopyWithImpl(
      _$SignUpResetEvent _value, $Res Function(_$SignUpResetEvent) _then)
      : super(_value, (v) => _then(v as _$SignUpResetEvent));

  @override
  _$SignUpResetEvent get _value => super._value as _$SignUpResetEvent;
}

/// @nodoc

class _$SignUpResetEvent implements SignUpResetEvent {
  const _$SignUpResetEvent();

  @override
  String toString() {
    return 'SignUpEvent.signUpResetEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            HashMap<dynamic, dynamic> userData, BuildContext context)
        signUpWithPhoneEvent,
    required TResult Function(String responseCode) signUpWithPhoneRes,
    required TResult Function() signUpResetEvent,
  }) {
    return signUpResetEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HashMap<dynamic, dynamic> userData, BuildContext context)?
        signUpWithPhoneEvent,
    TResult Function(String responseCode)? signUpWithPhoneRes,
    TResult Function()? signUpResetEvent,
  }) {
    return signUpResetEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HashMap<dynamic, dynamic> userData, BuildContext context)?
        signUpWithPhoneEvent,
    TResult Function(String responseCode)? signUpWithPhoneRes,
    TResult Function()? signUpResetEvent,
    required TResult orElse(),
  }) {
    if (signUpResetEvent != null) {
      return signUpResetEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithPhoneEvent value) signUpWithPhoneEvent,
    required TResult Function(SignUpWithPhoneRes value) signUpWithPhoneRes,
    required TResult Function(SignUpResetEvent value) signUpResetEvent,
  }) {
    return signUpResetEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpWithPhoneEvent value)? signUpWithPhoneEvent,
    TResult Function(SignUpWithPhoneRes value)? signUpWithPhoneRes,
    TResult Function(SignUpResetEvent value)? signUpResetEvent,
  }) {
    return signUpResetEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithPhoneEvent value)? signUpWithPhoneEvent,
    TResult Function(SignUpWithPhoneRes value)? signUpWithPhoneRes,
    TResult Function(SignUpResetEvent value)? signUpResetEvent,
    required TResult orElse(),
  }) {
    if (signUpResetEvent != null) {
      return signUpResetEvent(this);
    }
    return orElse();
  }
}

abstract class SignUpResetEvent implements SignUpEvent {
  const factory SignUpResetEvent() = _$SignUpResetEvent;
}

/// @nodoc
mixin _$SignUpState {
  SignUpWithPhoneStatus get signUpWithPhoneStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call({SignUpWithPhoneStatus signUpWithPhoneStatus});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? signUpWithPhoneStatus = freezed,
  }) {
    return _then(_value.copyWith(
      signUpWithPhoneStatus: signUpWithPhoneStatus == freezed
          ? _value.signUpWithPhoneStatus
          : signUpWithPhoneStatus // ignore: cast_nullable_to_non_nullable
              as SignUpWithPhoneStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call({SignUpWithPhoneStatus signUpWithPhoneStatus});
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, (v) => _then(v as _$_SignUpState));

  @override
  _$_SignUpState get _value => super._value as _$_SignUpState;

  @override
  $Res call({
    Object? signUpWithPhoneStatus = freezed,
  }) {
    return _then(_$_SignUpState(
      signUpWithPhoneStatus: signUpWithPhoneStatus == freezed
          ? _value.signUpWithPhoneStatus
          : signUpWithPhoneStatus // ignore: cast_nullable_to_non_nullable
              as SignUpWithPhoneStatus,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState({required this.signUpWithPhoneStatus});

  @override
  final SignUpWithPhoneStatus signUpWithPhoneStatus;

  @override
  String toString() {
    return 'SignUpState(signUpWithPhoneStatus: $signUpWithPhoneStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            const DeepCollectionEquality()
                .equals(other.signUpWithPhoneStatus, signUpWithPhoneStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(signUpWithPhoneStatus));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
          {required final SignUpWithPhoneStatus signUpWithPhoneStatus}) =
      _$_SignUpState;

  @override
  SignUpWithPhoneStatus get signUpWithPhoneStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
