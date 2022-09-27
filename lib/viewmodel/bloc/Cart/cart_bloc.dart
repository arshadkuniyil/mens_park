import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/view/home/widgets/product_card/product_card.dart';
import 'package:mens_park/viewmodel/bloc/home/app_bar/home_app_bar_bloc.dart';
import 'package:mens_park/viewmodel/service/cart_service.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    List<CartModel> cartProductList = [];
    int cartItemCount = 0;
    int subTotal = 0;
    CartService cartService = CartService();
    on<LoadCartEvent>((event, emit) async {
      emit(
        CartState(
          cartProductList: cartProductList,
          cartItemCount: cartItemCount,
          isLoading: true,
          subTotal: subTotal,
        ),
      );

      List<QueryDocumentSnapshot> cartProdcutSnapshot =
          await cartService.getCartPoducts();

      cartProductList = cartProdcutSnapshot.map((doc) {
        final cartProduct =
            CartModel.fromJson(doc.data() as Map<String, dynamic>);

        if (cartProduct.quantity != null) {
          cartItemCount = cartItemCount + cartProduct.quantity!;
          subTotal = subTotal + cartProduct.totalPrice!;
        }
        return cartProduct;
      }).toList();

      emit(
        CartState(
            cartProductList: cartProductList,
            cartItemCount: cartItemCount,
            isLoading: false,
            subTotal: subTotal),
      );
    });
    on<IncreaseQuantity>((event, emit) async {
      await cartService
          .addToCartOrIncreaseQty(
               isFromCartPage: true,
              productData: ProductModel.fromJson(event.product.toJson()),
              quantity: 1,
              size: event.size)
          .then((product) {
        int index = cartProductList.indexWhere((productOnTheCart) {
          return productOnTheCart.id == product.id;
        });
        cartProductList[index] = product;
        cartItemCount++;
        subTotal += product.price!;

        emit(
          CartState(
              cartProductList: cartProductList,
              cartItemCount: cartItemCount,
              isLoading: false,
              subTotal: subTotal),
        );
      });
    });
    on<DecreaseQuantity>((event, emit) async {
      if (event.product.quantity == 1) {
        return;
      }

      await cartService.decreaseCartProductQty(event.product).then((status) {
        cartItemCount--;
        subTotal -= event.product.price!;
        cartProductList[event.index].totalPrice =
            cartProductList[event.index].totalPrice! - event.product.price!;

        emit(
          CartState(
              cartProductList: cartProductList,
              cartItemCount: cartItemCount,
              isLoading: false,
              subTotal: subTotal),
        );
      });
    });

    on<DeleteCartProductEvent>((event, emit) {
      cartService.deleteCartProduct(event.product);
      cartProductList.removeAt(event.index);
      cartItemCount -= event.product.quantity!;
      subTotal -= event.product.totalPrice!;

      if (cartItemCount == 0) {
        Navigator.of(event.context).pushReplacementNamed('/home');
      }
      emit(
        CartState(
            cartProductList: cartProductList,
            cartItemCount: cartItemCount,
            isLoading: false,
            subTotal: subTotal),
      );
    });

    on<AddToCart>((event, emit) async {
      await cartService
          .addToCartOrIncreaseQty(
              isFromCartPage: false,
              productData: event.product,
              quantity: event.quantity,
              size: event.size)
          .then((product) {
        int index;
        if (cartProductList.isEmpty) {
          cartProductList.add(product);
        } else {
          index = cartProductList.indexWhere((productOnTheCart) {
            return productOnTheCart.id == product.id;
          });
          if (index == -1) {
            cartProductList.add(product);
          } else {
            cartProductList[index] = product;
          }
        }

        cartItemCount++;
        subTotal += product.price!;

        emit(
          CartState(
            cartProductList: cartProductList,
            cartItemCount: cartItemCount,
            isLoading: false,
            subTotal: subTotal,
          ),
        );
      });
    });
  }
}
