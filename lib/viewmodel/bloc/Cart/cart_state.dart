part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required List<CartModel> cartProductList,
    required int cartItemCount,
    required int subTotal,
    required bool isLoading,
  }) = _CartState;

  factory CartState.initial() =>const  CartState(
    cartProductList: [], cartItemCount: 0, isLoading: true, subTotal: 0);
}
