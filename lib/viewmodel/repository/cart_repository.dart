import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/services/auth_services.dart';
import 'package:mens_park/services/cart_service.dart';

@LazySingleton(as: CartService)
class CartRepository extends CartService{
  final fireStore = FirebaseFirestore.instance;
  
  @override
  Future<CartModel> addToCartOrIncreaseQty(
      {required ProductModel productData,
      required String size,
      required bool isFromCartPage,
      required int quantity,
      required AuthService authService}) async {
    CartModel productToCart = CartModel.fromJson(productData.toJson());

    if (!isFromCartPage) {
      productToCart.productSize = size;
      productToCart.id = '${productData.id}$size';
    }

    final cartProduct = await fireStore
        .collection('users')
        .doc(authService.getUser()!.uid)
        .collection('cart')
        .where('id', isEqualTo: '${productToCart.id}')
        .get();

    if (cartProduct.docs.isEmpty) {
      //add product to cart
      productToCart.quantity = quantity;
      productToCart.totalPrice = productToCart.quantity! * productToCart.price!;
      await fireStore
          .collection('users')
          .doc(authService.getUser()!.uid)
          .collection('cart')
          .doc('${productData.id}$size')
          .set(productToCart.toJson());
    } else {
      //increase cart product quantity
      productToCart = CartModel.fromJson(cartProduct.docs[0].data());
      productToCart.quantity = productToCart.quantity! + quantity;
      productToCart.totalPrice = productToCart.quantity! * productToCart.price!;

      await fireStore
          .collection('users')
          .doc(authService.getUser()!.uid)
          .collection('cart')
          .doc('${productToCart.id}')
          .update({
        'quantity': FieldValue.increment(quantity),
        'totalPrice': FieldValue.increment(productData.price!)
      });
    }
    return productToCart;
  }

  @override
  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>>getCartPoducts(
      AuthService authService) async {
    final cartProducts = await fireStore
        .collection('users')
        .doc(authService.getUser()!.uid)
        .collection('cart')
        .get();
    return cartProducts.docs;
  }

  @override
  Future<void>  decreaseCartProductQty(CartModel product,AuthService authService) async {
    product.quantity = product.quantity! - 1;

    await fireStore
        .collection('users')
        .doc(authService.getUser()!.uid)
        .collection('cart')
        .doc('${product.id}')
        .update({
      'quantity': FieldValue.increment(-1),
      'totalPrice': FieldValue.increment(product.price! * -1)
    });
  }

 @override
  Future<void> deleteCartProduct(CartModel product,AuthService authService) async {
    await fireStore
        .collection('users')
        .doc(authService.getUser()!.uid)
        .collection('cart')
        .doc('${product.id}')
        .delete();
  }

  @override
  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getProductDataById(
      String productId) async {
    final productDataSnapshot = await fireStore
        .collection('products')
        .where('id', isEqualTo: productId)
        .get();
    return productDataSnapshot.docs;
  }

  @override
  Future<void>clearCart(AuthService authService) async {
    final batch = fireStore.batch();

    await fireStore
        .collection('users')
        .doc(authService.getUser()!.uid)
        .collection('cart')
        .get()
        .then((snapshots) {
      for (var doc in snapshots.docs) {
        batch.delete(doc.reference);
      }
    });

    await batch.commit();
  }
}
