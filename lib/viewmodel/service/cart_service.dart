import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';

import 'auth_service.dart';

class CartService {
  final fireStore = FirebaseFirestore.instance;
  Future<CartModel> addToCart(var productData, String size) async {
    CartModel productToCart;

    if (productData.runtimeType != CartModel) {
      // call from  home page
      productToCart = CartModel.fromJson(productData.toJson());
      productToCart.quantity = 1;
      productToCart.productSize = size;
      productToCart.id = '${productData.id}$size';
    } else {
      // call from  cart page
      productToCart = productData;
      productToCart.quantity = productData.quantity + 1;
    }

    final cartProduct = await fireStore
        .collection('users')
        .doc(AuthService().getUser()!.uid)
        .collection('cart')
        .where('id', isEqualTo: '${productToCart.id}')
        .get();

    productToCart.totalPrice = productToCart.quantity! * productToCart.price!;
    if (cartProduct.docs.isEmpty) {
      //add product to cart
      await fireStore
          .collection('users')
          .doc(AuthService().getUser()!.uid)
          .collection('cart')
          .doc('${productData.id}$size')
          .set(productToCart.toJson());
    } else {
      await fireStore
          //increase cart product quanity
          .collection('users')
          .doc(AuthService().getUser()!.uid)
          .collection('cart')
          .doc('${productToCart.id}')
          .update({
        'quantity': FieldValue.increment(1),
        'totalPrice':
            FieldValue.increment(productData.price!)
      });
    }
    return productToCart;
  }

  getCartPoducts() async {
    final cartProducts = await fireStore
        .collection('users')
        .doc(AuthService().getUser()!.uid)
        .collection('cart')
        .get();
    return cartProducts.docs;
  }

  decreaseCartProductQty(CartModel product) async {
    product.quantity = product.quantity! - 1;
    
    await fireStore
        .collection('users')
        .doc(AuthService().getUser()!.uid)
        .collection('cart')
        .doc('${product.id}')
        .update({
      'quantity': FieldValue.increment(-1),
      'totalPrice':
          FieldValue.increment(product.price! * -1)
    });
    return true;
  }

  deleteCartProduct(CartModel product) async {
    await fireStore
        .collection('users')
        .doc(AuthService().getUser()!.uid)
        .collection('cart')
        .doc('${product.id}')
        .delete()
        .then(
          (doc) => log("Document deleted"),
          onError: (e) => log("Error updating document $e"),
        );
    ;
  }
}
