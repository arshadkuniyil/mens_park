// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartEvent,
    required TResult Function(
            CartModel product, int index, BuildContext context)
        deleteCartProductEvent,
    required TResult Function(ProductModel product, String size, int quantity)
        addToCart,
    required TResult Function(CartModel product, String size) increaseQuantity,
    required TResult Function(
            CartModel product, BuildContext context, int index)
        decreaseQuantity,
    required TResult Function(CartModel cartProduct, BuildContext context)
        navigateToProductScreen,
    required TResult Function(String address, BuildContext context) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCartEvent,
    required TResult Function(DeleteCartProductEvent value)
        deleteCartProductEvent,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseQuantity value) increaseQuantity,
    required TResult Function(DecreaseQuantity value) decreaseQuantity,
    required TResult Function(NavigateToProductScreen value)
        navigateToProductScreen,
    required TResult Function(PlaceOrder value) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$$LoadCartEventCopyWith<$Res> {
  factory _$$LoadCartEventCopyWith(
          _$LoadCartEvent value, $Res Function(_$LoadCartEvent) then) =
      __$$LoadCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCartEventCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$$LoadCartEventCopyWith<$Res> {
  __$$LoadCartEventCopyWithImpl(
      _$LoadCartEvent _value, $Res Function(_$LoadCartEvent) _then)
      : super(_value, (v) => _then(v as _$LoadCartEvent));

  @override
  _$LoadCartEvent get _value => super._value as _$LoadCartEvent;
}

/// @nodoc

class _$LoadCartEvent implements LoadCartEvent {
  const _$LoadCartEvent();

  @override
  String toString() {
    return 'CartEvent.loadCartEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartEvent,
    required TResult Function(
            CartModel product, int index, BuildContext context)
        deleteCartProductEvent,
    required TResult Function(ProductModel product, String size, int quantity)
        addToCart,
    required TResult Function(CartModel product, String size) increaseQuantity,
    required TResult Function(
            CartModel product, BuildContext context, int index)
        decreaseQuantity,
    required TResult Function(CartModel cartProduct, BuildContext context)
        navigateToProductScreen,
    required TResult Function(String address, BuildContext context) placeOrder,
  }) {
    return loadCartEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
  }) {
    return loadCartEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
    required TResult orElse(),
  }) {
    if (loadCartEvent != null) {
      return loadCartEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCartEvent,
    required TResult Function(DeleteCartProductEvent value)
        deleteCartProductEvent,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseQuantity value) increaseQuantity,
    required TResult Function(DecreaseQuantity value) decreaseQuantity,
    required TResult Function(NavigateToProductScreen value)
        navigateToProductScreen,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return loadCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
  }) {
    return loadCartEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (loadCartEvent != null) {
      return loadCartEvent(this);
    }
    return orElse();
  }
}

abstract class LoadCartEvent implements CartEvent {
  const factory LoadCartEvent() = _$LoadCartEvent;
}

/// @nodoc
abstract class _$$DeleteCartProductEventCopyWith<$Res> {
  factory _$$DeleteCartProductEventCopyWith(_$DeleteCartProductEvent value,
          $Res Function(_$DeleteCartProductEvent) then) =
      __$$DeleteCartProductEventCopyWithImpl<$Res>;
  $Res call({CartModel product, int index, BuildContext context});
}

/// @nodoc
class __$$DeleteCartProductEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$DeleteCartProductEventCopyWith<$Res> {
  __$$DeleteCartProductEventCopyWithImpl(_$DeleteCartProductEvent _value,
      $Res Function(_$DeleteCartProductEvent) _then)
      : super(_value, (v) => _then(v as _$DeleteCartProductEvent));

  @override
  _$DeleteCartProductEvent get _value =>
      super._value as _$DeleteCartProductEvent;

  @override
  $Res call({
    Object? product = freezed,
    Object? index = freezed,
    Object? context = freezed,
  }) {
    return _then(_$DeleteCartProductEvent(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartModel,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$DeleteCartProductEvent implements DeleteCartProductEvent {
  const _$DeleteCartProductEvent(
      {required this.product, required this.index, required this.context});

  @override
  final CartModel product;
  @override
  final int index;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.deleteCartProductEvent(product: $product, index: $index, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartProductEvent &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$DeleteCartProductEventCopyWith<_$DeleteCartProductEvent> get copyWith =>
      __$$DeleteCartProductEventCopyWithImpl<_$DeleteCartProductEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartEvent,
    required TResult Function(
            CartModel product, int index, BuildContext context)
        deleteCartProductEvent,
    required TResult Function(ProductModel product, String size, int quantity)
        addToCart,
    required TResult Function(CartModel product, String size) increaseQuantity,
    required TResult Function(
            CartModel product, BuildContext context, int index)
        decreaseQuantity,
    required TResult Function(CartModel cartProduct, BuildContext context)
        navigateToProductScreen,
    required TResult Function(String address, BuildContext context) placeOrder,
  }) {
    return deleteCartProductEvent(product, index, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
  }) {
    return deleteCartProductEvent?.call(product, index, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
    required TResult orElse(),
  }) {
    if (deleteCartProductEvent != null) {
      return deleteCartProductEvent(product, index, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCartEvent,
    required TResult Function(DeleteCartProductEvent value)
        deleteCartProductEvent,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseQuantity value) increaseQuantity,
    required TResult Function(DecreaseQuantity value) decreaseQuantity,
    required TResult Function(NavigateToProductScreen value)
        navigateToProductScreen,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return deleteCartProductEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
  }) {
    return deleteCartProductEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (deleteCartProductEvent != null) {
      return deleteCartProductEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteCartProductEvent implements CartEvent {
  const factory DeleteCartProductEvent(
      {required final CartModel product,
      required final int index,
      required final BuildContext context}) = _$DeleteCartProductEvent;

  CartModel get product;
  int get index;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$DeleteCartProductEventCopyWith<_$DeleteCartProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartCopyWith<$Res> {
  factory _$$AddToCartCopyWith(
          _$AddToCart value, $Res Function(_$AddToCart) then) =
      __$$AddToCartCopyWithImpl<$Res>;
  $Res call({ProductModel product, String size, int quantity});
}

/// @nodoc
class __$$AddToCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$$AddToCartCopyWith<$Res> {
  __$$AddToCartCopyWithImpl(
      _$AddToCart _value, $Res Function(_$AddToCart) _then)
      : super(_value, (v) => _then(v as _$AddToCart));

  @override
  _$AddToCart get _value => super._value as _$AddToCart;

  @override
  $Res call({
    Object? product = freezed,
    Object? size = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$AddToCart(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddToCart implements AddToCart {
  const _$AddToCart(
      {required this.product, required this.size, required this.quantity});

  @override
  final ProductModel product;
  @override
  final String size;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addToCart(product: $product, size: $size, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCart &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      __$$AddToCartCopyWithImpl<_$AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartEvent,
    required TResult Function(
            CartModel product, int index, BuildContext context)
        deleteCartProductEvent,
    required TResult Function(ProductModel product, String size, int quantity)
        addToCart,
    required TResult Function(CartModel product, String size) increaseQuantity,
    required TResult Function(
            CartModel product, BuildContext context, int index)
        decreaseQuantity,
    required TResult Function(CartModel cartProduct, BuildContext context)
        navigateToProductScreen,
    required TResult Function(String address, BuildContext context) placeOrder,
  }) {
    return addToCart(product, size, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
  }) {
    return addToCart?.call(product, size, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product, size, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCartEvent,
    required TResult Function(DeleteCartProductEvent value)
        deleteCartProductEvent,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseQuantity value) increaseQuantity,
    required TResult Function(DecreaseQuantity value) decreaseQuantity,
    required TResult Function(NavigateToProductScreen value)
        navigateToProductScreen,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCart implements CartEvent {
  const factory AddToCart(
      {required final ProductModel product,
      required final String size,
      required final int quantity}) = _$AddToCart;

  ProductModel get product;
  String get size;
  int get quantity;
  @JsonKey(ignore: true)
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncreaseQuantityCopyWith<$Res> {
  factory _$$IncreaseQuantityCopyWith(
          _$IncreaseQuantity value, $Res Function(_$IncreaseQuantity) then) =
      __$$IncreaseQuantityCopyWithImpl<$Res>;
  $Res call({CartModel product, String size});
}

/// @nodoc
class __$$IncreaseQuantityCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$IncreaseQuantityCopyWith<$Res> {
  __$$IncreaseQuantityCopyWithImpl(
      _$IncreaseQuantity _value, $Res Function(_$IncreaseQuantity) _then)
      : super(_value, (v) => _then(v as _$IncreaseQuantity));

  @override
  _$IncreaseQuantity get _value => super._value as _$IncreaseQuantity;

  @override
  $Res call({
    Object? product = freezed,
    Object? size = freezed,
  }) {
    return _then(_$IncreaseQuantity(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartModel,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IncreaseQuantity implements IncreaseQuantity {
  const _$IncreaseQuantity({required this.product, required this.size});

  @override
  final CartModel product;
  @override
  final String size;

  @override
  String toString() {
    return 'CartEvent.increaseQuantity(product: $product, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncreaseQuantity &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$$IncreaseQuantityCopyWith<_$IncreaseQuantity> get copyWith =>
      __$$IncreaseQuantityCopyWithImpl<_$IncreaseQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartEvent,
    required TResult Function(
            CartModel product, int index, BuildContext context)
        deleteCartProductEvent,
    required TResult Function(ProductModel product, String size, int quantity)
        addToCart,
    required TResult Function(CartModel product, String size) increaseQuantity,
    required TResult Function(
            CartModel product, BuildContext context, int index)
        decreaseQuantity,
    required TResult Function(CartModel cartProduct, BuildContext context)
        navigateToProductScreen,
    required TResult Function(String address, BuildContext context) placeOrder,
  }) {
    return increaseQuantity(product, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
  }) {
    return increaseQuantity?.call(product, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
    required TResult orElse(),
  }) {
    if (increaseQuantity != null) {
      return increaseQuantity(product, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCartEvent,
    required TResult Function(DeleteCartProductEvent value)
        deleteCartProductEvent,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseQuantity value) increaseQuantity,
    required TResult Function(DecreaseQuantity value) decreaseQuantity,
    required TResult Function(NavigateToProductScreen value)
        navigateToProductScreen,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return increaseQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
  }) {
    return increaseQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (increaseQuantity != null) {
      return increaseQuantity(this);
    }
    return orElse();
  }
}

abstract class IncreaseQuantity implements CartEvent {
  const factory IncreaseQuantity(
      {required final CartModel product,
      required final String size}) = _$IncreaseQuantity;

  CartModel get product;
  String get size;
  @JsonKey(ignore: true)
  _$$IncreaseQuantityCopyWith<_$IncreaseQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecreaseQuantityCopyWith<$Res> {
  factory _$$DecreaseQuantityCopyWith(
          _$DecreaseQuantity value, $Res Function(_$DecreaseQuantity) then) =
      __$$DecreaseQuantityCopyWithImpl<$Res>;
  $Res call({CartModel product, BuildContext context, int index});
}

/// @nodoc
class __$$DecreaseQuantityCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$DecreaseQuantityCopyWith<$Res> {
  __$$DecreaseQuantityCopyWithImpl(
      _$DecreaseQuantity _value, $Res Function(_$DecreaseQuantity) _then)
      : super(_value, (v) => _then(v as _$DecreaseQuantity));

  @override
  _$DecreaseQuantity get _value => super._value as _$DecreaseQuantity;

  @override
  $Res call({
    Object? product = freezed,
    Object? context = freezed,
    Object? index = freezed,
  }) {
    return _then(_$DecreaseQuantity(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartModel,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DecreaseQuantity implements DecreaseQuantity {
  const _$DecreaseQuantity(
      {required this.product, required this.context, required this.index});

  @override
  final CartModel product;
  @override
  final BuildContext context;
  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.decreaseQuantity(product: $product, context: $context, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecreaseQuantity &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$DecreaseQuantityCopyWith<_$DecreaseQuantity> get copyWith =>
      __$$DecreaseQuantityCopyWithImpl<_$DecreaseQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartEvent,
    required TResult Function(
            CartModel product, int index, BuildContext context)
        deleteCartProductEvent,
    required TResult Function(ProductModel product, String size, int quantity)
        addToCart,
    required TResult Function(CartModel product, String size) increaseQuantity,
    required TResult Function(
            CartModel product, BuildContext context, int index)
        decreaseQuantity,
    required TResult Function(CartModel cartProduct, BuildContext context)
        navigateToProductScreen,
    required TResult Function(String address, BuildContext context) placeOrder,
  }) {
    return decreaseQuantity(product, context, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
  }) {
    return decreaseQuantity?.call(product, context, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
    required TResult orElse(),
  }) {
    if (decreaseQuantity != null) {
      return decreaseQuantity(product, context, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCartEvent,
    required TResult Function(DeleteCartProductEvent value)
        deleteCartProductEvent,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseQuantity value) increaseQuantity,
    required TResult Function(DecreaseQuantity value) decreaseQuantity,
    required TResult Function(NavigateToProductScreen value)
        navigateToProductScreen,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return decreaseQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
  }) {
    return decreaseQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (decreaseQuantity != null) {
      return decreaseQuantity(this);
    }
    return orElse();
  }
}

abstract class DecreaseQuantity implements CartEvent {
  const factory DecreaseQuantity(
      {required final CartModel product,
      required final BuildContext context,
      required final int index}) = _$DecreaseQuantity;

  CartModel get product;
  BuildContext get context;
  int get index;
  @JsonKey(ignore: true)
  _$$DecreaseQuantityCopyWith<_$DecreaseQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateToProductScreenCopyWith<$Res> {
  factory _$$NavigateToProductScreenCopyWith(_$NavigateToProductScreen value,
          $Res Function(_$NavigateToProductScreen) then) =
      __$$NavigateToProductScreenCopyWithImpl<$Res>;
  $Res call({CartModel cartProduct, BuildContext context});
}

/// @nodoc
class __$$NavigateToProductScreenCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$NavigateToProductScreenCopyWith<$Res> {
  __$$NavigateToProductScreenCopyWithImpl(_$NavigateToProductScreen _value,
      $Res Function(_$NavigateToProductScreen) _then)
      : super(_value, (v) => _then(v as _$NavigateToProductScreen));

  @override
  _$NavigateToProductScreen get _value =>
      super._value as _$NavigateToProductScreen;

  @override
  $Res call({
    Object? cartProduct = freezed,
    Object? context = freezed,
  }) {
    return _then(_$NavigateToProductScreen(
      cartProduct: cartProduct == freezed
          ? _value.cartProduct
          : cartProduct // ignore: cast_nullable_to_non_nullable
              as CartModel,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$NavigateToProductScreen implements NavigateToProductScreen {
  const _$NavigateToProductScreen(
      {required this.cartProduct, required this.context});

  @override
  final CartModel cartProduct;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.navigateToProductScreen(cartProduct: $cartProduct, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToProductScreen &&
            const DeepCollectionEquality()
                .equals(other.cartProduct, cartProduct) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cartProduct),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$NavigateToProductScreenCopyWith<_$NavigateToProductScreen> get copyWith =>
      __$$NavigateToProductScreenCopyWithImpl<_$NavigateToProductScreen>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartEvent,
    required TResult Function(
            CartModel product, int index, BuildContext context)
        deleteCartProductEvent,
    required TResult Function(ProductModel product, String size, int quantity)
        addToCart,
    required TResult Function(CartModel product, String size) increaseQuantity,
    required TResult Function(
            CartModel product, BuildContext context, int index)
        decreaseQuantity,
    required TResult Function(CartModel cartProduct, BuildContext context)
        navigateToProductScreen,
    required TResult Function(String address, BuildContext context) placeOrder,
  }) {
    return navigateToProductScreen(cartProduct, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
  }) {
    return navigateToProductScreen?.call(cartProduct, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
    required TResult orElse(),
  }) {
    if (navigateToProductScreen != null) {
      return navigateToProductScreen(cartProduct, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCartEvent,
    required TResult Function(DeleteCartProductEvent value)
        deleteCartProductEvent,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseQuantity value) increaseQuantity,
    required TResult Function(DecreaseQuantity value) decreaseQuantity,
    required TResult Function(NavigateToProductScreen value)
        navigateToProductScreen,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return navigateToProductScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
  }) {
    return navigateToProductScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (navigateToProductScreen != null) {
      return navigateToProductScreen(this);
    }
    return orElse();
  }
}

abstract class NavigateToProductScreen implements CartEvent {
  const factory NavigateToProductScreen(
      {required final CartModel cartProduct,
      required final BuildContext context}) = _$NavigateToProductScreen;

  CartModel get cartProduct;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$NavigateToProductScreenCopyWith<_$NavigateToProductScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceOrderCopyWith<$Res> {
  factory _$$PlaceOrderCopyWith(
          _$PlaceOrder value, $Res Function(_$PlaceOrder) then) =
      __$$PlaceOrderCopyWithImpl<$Res>;
  $Res call({String address, BuildContext context});
}

/// @nodoc
class __$$PlaceOrderCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$$PlaceOrderCopyWith<$Res> {
  __$$PlaceOrderCopyWithImpl(
      _$PlaceOrder _value, $Res Function(_$PlaceOrder) _then)
      : super(_value, (v) => _then(v as _$PlaceOrder));

  @override
  _$PlaceOrder get _value => super._value as _$PlaceOrder;

  @override
  $Res call({
    Object? address = freezed,
    Object? context = freezed,
  }) {
    return _then(_$PlaceOrder(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$PlaceOrder implements PlaceOrder {
  const _$PlaceOrder({required this.address, required this.context});

  @override
  final String address;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.placeOrder(address: $address, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrder &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$PlaceOrderCopyWith<_$PlaceOrder> get copyWith =>
      __$$PlaceOrderCopyWithImpl<_$PlaceOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartEvent,
    required TResult Function(
            CartModel product, int index, BuildContext context)
        deleteCartProductEvent,
    required TResult Function(ProductModel product, String size, int quantity)
        addToCart,
    required TResult Function(CartModel product, String size) increaseQuantity,
    required TResult Function(
            CartModel product, BuildContext context, int index)
        decreaseQuantity,
    required TResult Function(CartModel cartProduct, BuildContext context)
        navigateToProductScreen,
    required TResult Function(String address, BuildContext context) placeOrder,
  }) {
    return placeOrder(address, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
  }) {
    return placeOrder?.call(address, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartEvent,
    TResult Function(CartModel product, int index, BuildContext context)?
        deleteCartProductEvent,
    TResult Function(ProductModel product, String size, int quantity)?
        addToCart,
    TResult Function(CartModel product, String size)? increaseQuantity,
    TResult Function(CartModel product, BuildContext context, int index)?
        decreaseQuantity,
    TResult Function(CartModel cartProduct, BuildContext context)?
        navigateToProductScreen,
    TResult Function(String address, BuildContext context)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(address, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCartEvent,
    required TResult Function(DeleteCartProductEvent value)
        deleteCartProductEvent,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseQuantity value) increaseQuantity,
    required TResult Function(DecreaseQuantity value) decreaseQuantity,
    required TResult Function(NavigateToProductScreen value)
        navigateToProductScreen,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
  }) {
    return placeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCartEvent,
    TResult Function(DeleteCartProductEvent value)? deleteCartProductEvent,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseQuantity value)? increaseQuantity,
    TResult Function(DecreaseQuantity value)? decreaseQuantity,
    TResult Function(NavigateToProductScreen value)? navigateToProductScreen,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class PlaceOrder implements CartEvent {
  const factory PlaceOrder(
      {required final String address,
      required final BuildContext context}) = _$PlaceOrder;

  String get address;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$PlaceOrderCopyWith<_$PlaceOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  List<CartModel> get cartProductList => throw _privateConstructorUsedError;
  int get cartItemCount => throw _privateConstructorUsedError;
  int get subTotal => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call(
      {List<CartModel> cartProductList,
      int cartItemCount,
      int subTotal,
      bool isLoading});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? cartProductList = freezed,
    Object? cartItemCount = freezed,
    Object? subTotal = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      cartProductList: cartProductList == freezed
          ? _value.cartProductList
          : cartProductList // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      cartItemCount: cartItemCount == freezed
          ? _value.cartItemCount
          : cartItemCount // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(
          _$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CartModel> cartProductList,
      int cartItemCount,
      int subTotal,
      bool isLoading});
}

/// @nodoc
class __$$_CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(
      _$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, (v) => _then(v as _$_CartState));

  @override
  _$_CartState get _value => super._value as _$_CartState;

  @override
  $Res call({
    Object? cartProductList = freezed,
    Object? cartItemCount = freezed,
    Object? subTotal = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_CartState(
      cartProductList: cartProductList == freezed
          ? _value._cartProductList
          : cartProductList // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      cartItemCount: cartItemCount == freezed
          ? _value.cartItemCount
          : cartItemCount // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState(
      {required final List<CartModel> cartProductList,
      required this.cartItemCount,
      required this.subTotal,
      required this.isLoading})
      : _cartProductList = cartProductList;

  final List<CartModel> _cartProductList;
  @override
  List<CartModel> get cartProductList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProductList);
  }

  @override
  final int cartItemCount;
  @override
  final int subTotal;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CartState(cartProductList: $cartProductList, cartItemCount: $cartItemCount, subTotal: $subTotal, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartState &&
            const DeepCollectionEquality()
                .equals(other._cartProductList, _cartProductList) &&
            const DeepCollectionEquality()
                .equals(other.cartItemCount, cartItemCount) &&
            const DeepCollectionEquality().equals(other.subTotal, subTotal) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartProductList),
      const DeepCollectionEquality().hash(cartItemCount),
      const DeepCollectionEquality().hash(subTotal),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final List<CartModel> cartProductList,
      required final int cartItemCount,
      required final int subTotal,
      required final bool isLoading}) = _$_CartState;

  @override
  List<CartModel> get cartProductList;
  @override
  int get cartItemCount;
  @override
  int get subTotal;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
