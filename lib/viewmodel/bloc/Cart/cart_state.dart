part of 'cart_bloc.dart';

class CartState {
  final List<CartModel> cartProductList;
  final int cartItemCount;
  final int subTotal;
  final bool isLoading;

  CartState(
      {required this.cartProductList,
      required this.cartItemCount,
      required this.isLoading,
      required this.subTotal});
}

class CartInitial extends CartState {
  CartInitial() : super(cartProductList: [], cartItemCount: 0, isLoading: true,
            subTotal: 0);
}
