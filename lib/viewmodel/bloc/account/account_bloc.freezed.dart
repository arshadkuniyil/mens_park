// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrdersList,
    required TResult Function(String productId, String placedTime, int index)
        cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadOrdersList,
    TResult Function(String productId, String placedTime, int index)?
        cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrdersList,
    TResult Function(String productId, String placedTime, int index)?
        cancelOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersList value) loadOrdersList,
    required TResult Function(CancelOrder value) cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadOrdersList value)? loadOrdersList,
    TResult Function(CancelOrder value)? cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersList value)? loadOrdersList,
    TResult Function(CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res> implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  final AccountEvent _value;
  // ignore: unused_field
  final $Res Function(AccountEvent) _then;
}

/// @nodoc
abstract class _$$LoadOrdersListCopyWith<$Res> {
  factory _$$LoadOrdersListCopyWith(
          _$LoadOrdersList value, $Res Function(_$LoadOrdersList) then) =
      __$$LoadOrdersListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadOrdersListCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$$LoadOrdersListCopyWith<$Res> {
  __$$LoadOrdersListCopyWithImpl(
      _$LoadOrdersList _value, $Res Function(_$LoadOrdersList) _then)
      : super(_value, (v) => _then(v as _$LoadOrdersList));

  @override
  _$LoadOrdersList get _value => super._value as _$LoadOrdersList;
}

/// @nodoc

class _$LoadOrdersList implements LoadOrdersList {
  const _$LoadOrdersList();

  @override
  String toString() {
    return 'AccountEvent.loadOrdersList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadOrdersList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrdersList,
    required TResult Function(String productId, String placedTime, int index)
        cancelOrder,
  }) {
    return loadOrdersList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadOrdersList,
    TResult Function(String productId, String placedTime, int index)?
        cancelOrder,
  }) {
    return loadOrdersList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrdersList,
    TResult Function(String productId, String placedTime, int index)?
        cancelOrder,
    required TResult orElse(),
  }) {
    if (loadOrdersList != null) {
      return loadOrdersList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersList value) loadOrdersList,
    required TResult Function(CancelOrder value) cancelOrder,
  }) {
    return loadOrdersList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadOrdersList value)? loadOrdersList,
    TResult Function(CancelOrder value)? cancelOrder,
  }) {
    return loadOrdersList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersList value)? loadOrdersList,
    TResult Function(CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (loadOrdersList != null) {
      return loadOrdersList(this);
    }
    return orElse();
  }
}

abstract class LoadOrdersList implements AccountEvent {
  const factory LoadOrdersList() = _$LoadOrdersList;
}

/// @nodoc
abstract class _$$CancelOrderCopyWith<$Res> {
  factory _$$CancelOrderCopyWith(
          _$CancelOrder value, $Res Function(_$CancelOrder) then) =
      __$$CancelOrderCopyWithImpl<$Res>;
  $Res call({String productId, String placedTime, int index});
}

/// @nodoc
class __$$CancelOrderCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$$CancelOrderCopyWith<$Res> {
  __$$CancelOrderCopyWithImpl(
      _$CancelOrder _value, $Res Function(_$CancelOrder) _then)
      : super(_value, (v) => _then(v as _$CancelOrder));

  @override
  _$CancelOrder get _value => super._value as _$CancelOrder;

  @override
  $Res call({
    Object? productId = freezed,
    Object? placedTime = freezed,
    Object? index = freezed,
  }) {
    return _then(_$CancelOrder(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      placedTime: placedTime == freezed
          ? _value.placedTime
          : placedTime // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CancelOrder implements CancelOrder {
  const _$CancelOrder(
      {required this.productId, required this.placedTime, required this.index});

  @override
  final String productId;
  @override
  final String placedTime;
  @override
  final int index;

  @override
  String toString() {
    return 'AccountEvent.cancelOrder(productId: $productId, placedTime: $placedTime, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrder &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other.placedTime, placedTime) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(placedTime),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$CancelOrderCopyWith<_$CancelOrder> get copyWith =>
      __$$CancelOrderCopyWithImpl<_$CancelOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrdersList,
    required TResult Function(String productId, String placedTime, int index)
        cancelOrder,
  }) {
    return cancelOrder(productId, placedTime, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadOrdersList,
    TResult Function(String productId, String placedTime, int index)?
        cancelOrder,
  }) {
    return cancelOrder?.call(productId, placedTime, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrdersList,
    TResult Function(String productId, String placedTime, int index)?
        cancelOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(productId, placedTime, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersList value) loadOrdersList,
    required TResult Function(CancelOrder value) cancelOrder,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadOrdersList value)? loadOrdersList,
    TResult Function(CancelOrder value)? cancelOrder,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersList value)? loadOrdersList,
    TResult Function(CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class CancelOrder implements AccountEvent {
  const factory CancelOrder(
      {required final String productId,
      required final String placedTime,
      required final int index}) = _$CancelOrder;

  String get productId;
  String get placedTime;
  int get index;
  @JsonKey(ignore: true)
  _$$CancelOrderCopyWith<_$CancelOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  List<OrderModel> get orderProductList => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  bool get isCancelling => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
  $Res call(
      {List<OrderModel> orderProductList,
      String displayName,
      bool isCancelling,
      bool isLoading});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;

  @override
  $Res call({
    Object? orderProductList = freezed,
    Object? displayName = freezed,
    Object? isCancelling = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      orderProductList: orderProductList == freezed
          ? _value.orderProductList
          : orderProductList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      isCancelling: isCancelling == freezed
          ? _value.isCancelling
          : isCancelling // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderStateCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_OrderStateCopyWith(
          _$_OrderState value, $Res Function(_$_OrderState) then) =
      __$$_OrderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<OrderModel> orderProductList,
      String displayName,
      bool isCancelling,
      bool isLoading});
}

/// @nodoc
class __$$_OrderStateCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res>
    implements _$$_OrderStateCopyWith<$Res> {
  __$$_OrderStateCopyWithImpl(
      _$_OrderState _value, $Res Function(_$_OrderState) _then)
      : super(_value, (v) => _then(v as _$_OrderState));

  @override
  _$_OrderState get _value => super._value as _$_OrderState;

  @override
  $Res call({
    Object? orderProductList = freezed,
    Object? displayName = freezed,
    Object? isCancelling = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_OrderState(
      orderProductList: orderProductList == freezed
          ? _value._orderProductList
          : orderProductList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      isCancelling: isCancelling == freezed
          ? _value.isCancelling
          : isCancelling // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OrderState implements _OrderState {
  const _$_OrderState(
      {required final List<OrderModel> orderProductList,
      required this.displayName,
      required this.isCancelling,
      required this.isLoading})
      : _orderProductList = orderProductList;

  final List<OrderModel> _orderProductList;
  @override
  List<OrderModel> get orderProductList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderProductList);
  }

  @override
  final String displayName;
  @override
  final bool isCancelling;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AccountState(orderProductList: $orderProductList, displayName: $displayName, isCancelling: $isCancelling, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderState &&
            const DeepCollectionEquality()
                .equals(other._orderProductList, _orderProductList) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.isCancelling, isCancelling) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orderProductList),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(isCancelling),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      __$$_OrderStateCopyWithImpl<_$_OrderState>(this, _$identity);
}

abstract class _OrderState implements AccountState {
  const factory _OrderState(
      {required final List<OrderModel> orderProductList,
      required final String displayName,
      required final bool isCancelling,
      required final bool isLoading}) = _$_OrderState;

  @override
  List<OrderModel> get orderProductList;
  @override
  String get displayName;
  @override
  bool get isCancelling;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
