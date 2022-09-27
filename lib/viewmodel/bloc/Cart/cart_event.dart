part of 'cart_bloc.dart';

class CartEvent {}

class LoadCartEvent extends CartEvent {}

class DeleteCartProductEvent extends CartEvent {
  final CartModel product;
  final int index;
  final BuildContext context;
  DeleteCartProductEvent(
      {required this.product, required this.index, required this.context});
}

class IncreaseQuantity extends CartEvent {
  final CartModel product;
  final String size;

  IncreaseQuantity({required this.product, required this.size});
}

class AddToCart extends CartEvent {
  final ProductModel product;
  final String size;
  final int quantity;

  AddToCart({required this.product, required this.size, required this.quantity});
}

class DecreaseQuantity extends CartEvent {
  final CartModel product;
  final BuildContext context;
  final int index;
  DecreaseQuantity(
      {required this.product, required this.context, required this.index});
}
class NavigateToProductScreen extends CartEvent {
  final CartModel cartProduct;
  final BuildContext context;
  
  NavigateToProductScreen(
      {required this.cartProduct, required this.context});
}
