part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.loadCartEvent() = LoadCartEvent;

  const factory CartEvent.deleteCartProductEvent({
    required CartModel product,
    required int index,
   
  }) = DeleteCartProductEvent;

  const factory CartEvent.addToCart({
    required ProductModel product,
    required String size,
    required int quantity,
  }) = AddToCart;

  const factory CartEvent.increaseQuantity({
    required CartModel product,
    required String size,
  }) = IncreaseQuantity;

  const factory CartEvent.decreaseQuantity({
    required CartModel product,
    required int index,
  }) = DecreaseQuantity;

  const factory CartEvent.navigateToProductScreen({
    required CartModel cartProduct,
   
  }) = NavigateToProductScreen;
  
  const factory CartEvent.placeOrder({
    required String address,
   
  }) = PlaceOrder;
  
}
