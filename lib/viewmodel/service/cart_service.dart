import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/product_model/product_model.dart';

import 'auth_service.dart';

class CartService {
  final fireStore = FirebaseFirestore.instance;
  addToCart(ProductModel product, String size) async {
    final cartProducts = await fireStore
        .collection('users')
        .doc(AuthService().getUser()!.uid)
        .collection('cart')
        .where('id', isEqualTo: '${product.id}$size')
        .get();
    log('${cartProducts.docs}aa');
    if (cartProducts.docs.isEmpty) {
      log('${cartProducts.docs.isEmpty}bb');
      CartModel productToCart = CartModel.fromJson(product.toJson());
      productToCart.productSize = size;
      productToCart.id = '${product.id}$size';
      productToCart.quantity = 1;
      productToCart.totalPrice = productToCart.quantity! * productToCart.price!;

      await fireStore
          .collection('users')
          .doc(AuthService().getUser()!.uid)
          .collection('cart')
          .doc('${product.id}$size')
          .set(productToCart.toJson());
    } else {
      await fireStore
          .collection('users')
          .doc(AuthService().getUser()!.uid)
          .collection('cart')
          .doc('${product.id}$size')
          .update({
        'quantity': FieldValue.increment(1),
        'totalPrice':
            FieldValue.increment(num.tryParse(product.price.toString())!)
      });
    }
  }
}
