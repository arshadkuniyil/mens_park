part of 'home_product_bloc.dart';

class HomeProductState {
  final bool isLoading;
  final ErrorEnum errorEnum;
  final List<ProductModel> productList;

  HomeProductState(
      {required this.isLoading,
      required this.errorEnum,
      required this.productList});
}

class HomeProductInitial extends HomeProductState {
  HomeProductInitial()
      : super(isLoading: false, errorEnum: ErrorEnum.noError, productList: []);
}
