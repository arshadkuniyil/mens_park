part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required ErrorEnum errorEnum,
    required List<CategoryModel> categoryList,
    required List<ProductModel> productList
    
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(
       errorEnum: ErrorEnum.noError,
        isLoading: false,
        categoryList: [], productList: [],
      );
}
