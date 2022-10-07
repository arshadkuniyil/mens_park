import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/product_model/product_model.dart';

import 'auth_services.dart';

abstract class CartService {
  Future<CartModel> addToCartOrIncreaseQty(
      {required ProductModel productData,
      required String size,
      required bool isFromCartPage,
      required int quantity,
      required AuthService authService});

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getCartPoducts(
      AuthService authService);

  Future<void> decreaseCartProductQty(
      CartModel product, AuthService authService);

  Future<void> deleteCartProduct(CartModel product, AuthService authService);

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getProductDataById(
      String productId);

  Future<void> clearCart(AuthService authService);
}
