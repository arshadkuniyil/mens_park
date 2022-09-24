part of 'cart_bloc.dart';

class CartEvent {}

class LoadCartEvent extends CartEvent {}

class DeleteCartProductEvent extends CartEvent {
  final CartModel product;
  final int index;
  final BuildContext context;
  DeleteCartProductEvent({required this.product, required this.index, required this.context});
}

class IncreaseQuantity extends CartEvent {
  final CartModel product;
  final String size;
  final BuildContext context;
  IncreaseQuantity(
      {required this.product, required this.size, required this.context});
}

class DecreaseQuantity extends CartEvent {
  final CartModel product;
  final BuildContext context;
  final int index;
  DecreaseQuantity(
      {required this.product, required this.context, required this.index});
}
