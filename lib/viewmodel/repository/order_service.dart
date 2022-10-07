import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/order_model/order_model.dart';
import 'package:mens_park/services/auth_services.dart';
import 'package:mens_park/services/order_service.dart';

@LazySingleton(as: OrderService)
class OrderRepository extends OrderService {
  final fireStore = FirebaseFirestore.instance;

  @override
  Future<void> placeOrder(List<CartModel> cartProductList, String address,
      AuthService authService) async {
    final batch = fireStore.batch();

    for (final cartProduct in cartProductList) {
      final orderProduct = OrderModel.fromJson(cartProduct.toJson());
      orderProduct.address = address;
      orderProduct.placedTime = DateTime.now().toString();

      batch.set(
          fireStore
              .collection('users')
              .doc(authService.getUser()!.uid)
              .collection('orders')
              .doc('${cartProduct.id}_${orderProduct.placedTime}'),
          orderProduct.toJson());
    }
    await batch.commit();
  }

  @override
  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getOrdersList(
      AuthService authService) async {
    final cartProducts = await fireStore
        .collection('users')
        .doc(authService.getUser()!.uid)
        .collection('orders')
        .get();

    return cartProducts.docs;
  }

  @override
  Future<void> cancelOrder(String id, AuthService authService) async {
    await fireStore
        .collection('users')
        .doc(authService.getUser()!.uid)
        .collection('orders')
        .doc(id)
        .delete();
  }
}
