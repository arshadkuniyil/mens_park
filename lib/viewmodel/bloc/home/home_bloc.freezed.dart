// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryName) getHomeProducts,
    required TResult Function() getHomeCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryName)? getHomeProducts,
    TResult Function()? getHomeCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryName)? getHomeProducts,
    TResult Function()? getHomeCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeProducts value) getHomeProducts,
    required TResult Function(GetHomeCategories value) getHomeCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeProducts value)? getHomeProducts,
    TResult Function(GetHomeCategories value)? getHomeCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeProducts value)? getHomeProducts,
    TResult Function(GetHomeCategories value)? getHomeCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$GetHomeProductsCopyWith<$Res> {
  factory _$$GetHomeProductsCopyWith(
          _$GetHomeProducts value, $Res Function(_$GetHomeProducts) then) =
      __$$GetHomeProductsCopyWithImpl<$Res>;
  $Res call({String categoryName});
}

/// @nodoc
class __$$GetHomeProductsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$GetHomeProductsCopyWith<$Res> {
  __$$GetHomeProductsCopyWithImpl(
      _$GetHomeProducts _value, $Res Function(_$GetHomeProducts) _then)
      : super(_value, (v) => _then(v as _$GetHomeProducts));

  @override
  _$GetHomeProducts get _value => super._value as _$GetHomeProducts;

  @override
  $Res call({
    Object? categoryName = freezed,
  }) {
    return _then(_$GetHomeProducts(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeProducts implements GetHomeProducts {
  const _$GetHomeProducts({required this.categoryName});

  @override
  final String categoryName;

  @override
  String toString() {
    return 'HomeEvent.getHomeProducts(categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProducts &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(categoryName));

  @JsonKey(ignore: true)
  @override
  _$$GetHomeProductsCopyWith<_$GetHomeProducts> get copyWith =>
      __$$GetHomeProductsCopyWithImpl<_$GetHomeProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryName) getHomeProducts,
    required TResult Function() getHomeCategories,
  }) {
    return getHomeProducts(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryName)? getHomeProducts,
    TResult Function()? getHomeCategories,
  }) {
    return getHomeProducts?.call(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryName)? getHomeProducts,
    TResult Function()? getHomeCategories,
    required TResult orElse(),
  }) {
    if (getHomeProducts != null) {
      return getHomeProducts(categoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeProducts value) getHomeProducts,
    required TResult Function(GetHomeCategories value) getHomeCategories,
  }) {
    return getHomeProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeProducts value)? getHomeProducts,
    TResult Function(GetHomeCategories value)? getHomeCategories,
  }) {
    return getHomeProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeProducts value)? getHomeProducts,
    TResult Function(GetHomeCategories value)? getHomeCategories,
    required TResult orElse(),
  }) {
    if (getHomeProducts != null) {
      return getHomeProducts(this);
    }
    return orElse();
  }
}

abstract class GetHomeProducts implements HomeEvent {
  const factory GetHomeProducts({required final String categoryName}) =
      _$GetHomeProducts;

  String get categoryName;
  @JsonKey(ignore: true)
  _$$GetHomeProductsCopyWith<_$GetHomeProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeCategoriesCopyWith<$Res> {
  factory _$$GetHomeCategoriesCopyWith(
          _$GetHomeCategories value, $Res Function(_$GetHomeCategories) then) =
      __$$GetHomeCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeCategoriesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$GetHomeCategoriesCopyWith<$Res> {
  __$$GetHomeCategoriesCopyWithImpl(
      _$GetHomeCategories _value, $Res Function(_$GetHomeCategories) _then)
      : super(_value, (v) => _then(v as _$GetHomeCategories));

  @override
  _$GetHomeCategories get _value => super._value as _$GetHomeCategories;
}

/// @nodoc

class _$GetHomeCategories implements GetHomeCategories {
  const _$GetHomeCategories();

  @override
  String toString() {
    return 'HomeEvent.getHomeCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryName) getHomeProducts,
    required TResult Function() getHomeCategories,
  }) {
    return getHomeCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryName)? getHomeProducts,
    TResult Function()? getHomeCategories,
  }) {
    return getHomeCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryName)? getHomeProducts,
    TResult Function()? getHomeCategories,
    required TResult orElse(),
  }) {
    if (getHomeCategories != null) {
      return getHomeCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeProducts value) getHomeProducts,
    required TResult Function(GetHomeCategories value) getHomeCategories,
  }) {
    return getHomeCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeProducts value)? getHomeProducts,
    TResult Function(GetHomeCategories value)? getHomeCategories,
  }) {
    return getHomeCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeProducts value)? getHomeProducts,
    TResult Function(GetHomeCategories value)? getHomeCategories,
    required TResult orElse(),
  }) {
    if (getHomeCategories != null) {
      return getHomeCategories(this);
    }
    return orElse();
  }
}

abstract class GetHomeCategories implements HomeEvent {
  const factory GetHomeCategories() = _$GetHomeCategories;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  ErrorEnum get errorEnum => throw _privateConstructorUsedError;
  List<CategoryModel> get categoryList => throw _privateConstructorUsedError;
  List<ProductModel> get productList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      ErrorEnum errorEnum,
      List<CategoryModel> categoryList,
      List<ProductModel> productList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? errorEnum = freezed,
    Object? categoryList = freezed,
    Object? productList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorEnum: errorEnum == freezed
          ? _value.errorEnum
          : errorEnum // ignore: cast_nullable_to_non_nullable
              as ErrorEnum,
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      productList: productList == freezed
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      ErrorEnum errorEnum,
      List<CategoryModel> categoryList,
      List<ProductModel> productList});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? errorEnum = freezed,
    Object? categoryList = freezed,
    Object? productList = freezed,
  }) {
    return _then(_$_HomeState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorEnum: errorEnum == freezed
          ? _value.errorEnum
          : errorEnum // ignore: cast_nullable_to_non_nullable
              as ErrorEnum,
      categoryList: categoryList == freezed
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      productList: productList == freezed
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isLoading,
      required this.errorEnum,
      required final List<CategoryModel> categoryList,
      required final List<ProductModel> productList})
      : _categoryList = categoryList,
        _productList = productList;

  @override
  final bool isLoading;
  @override
  final ErrorEnum errorEnum;
  final List<CategoryModel> _categoryList;
  @override
  List<CategoryModel> get categoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  final List<ProductModel> _productList;
  @override
  List<ProductModel> get productList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, errorEnum: $errorEnum, categoryList: $categoryList, productList: $productList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.errorEnum, errorEnum) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorEnum),
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final ErrorEnum errorEnum,
      required final List<CategoryModel> categoryList,
      required final List<ProductModel> productList}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  ErrorEnum get errorEnum;
  @override
  List<CategoryModel> get categoryList;
  @override
  List<ProductModel> get productList;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
