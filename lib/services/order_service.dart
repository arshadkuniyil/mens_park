import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';

import 'auth_services.dart';

abstract class OrderService {
  Future<void> placeOrder(
      List<CartModel> cartProductList, String address, AuthService authService);

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getOrdersList(
      AuthService authService);

  Future<void> cancelOrder(String id, AuthService authService);
}
