import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/order_model/order_model.dart';

import 'auth_service.dart';

class OrderService {
  final fireStore = FirebaseFirestore.instance;

  placeOrder(List<CartModel> cartProductList, String address) async {
    final batch = fireStore.batch();

    for (final cartProduct in cartProductList) {
      final orderProduct = OrderModel.fromJson(cartProduct.toJson());
      orderProduct.address = address;
      orderProduct.placedTime = DateTime.now().toString();

      batch.set(
          fireStore
              .collection('users')
              .doc(AuthService().getUser()!.uid)
              .collection('orders')
              .doc('${cartProduct.id}_${orderProduct.placedTime}'),
          orderProduct.toJson());
    }
    await batch.commit();
  }

  getOrdersList() async {
    final cartProducts = await fireStore
        .collection('users')
        .doc(AuthService().getUser()!.uid)
        .collection('orders')
        .get();

    return cartProducts.docs;
  }

  cancelOrder(String id) async {
    await fireStore
        .collection('users')
        .doc(AuthService().getUser()!.uid)
        .collection('orders')
        .doc(id)
        .delete();
   
  }
}
