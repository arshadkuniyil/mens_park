import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/res/global/global.dart';
import 'package:mens_park/services/auth_services.dart';
import 'package:mens_park/services/cart_service.dart';
import 'package:mens_park/services/order_service.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(AuthService authService, CartService cartService,
      OrderService orderService)
      : super(CartState.initial()) {
    List<CartModel> cartProductList = [];
    int cartItemCount = 0;
    int subTotal = 0;

    on<LoadCartEvent>((event, emit) async {
      log('message');
      cartItemCount = 0;
      subTotal = 0;
      emit(state.copyWith(isLoading: true));
      List<QueryDocumentSnapshot> cartProdcutSnapshot =
          await cartService.getCartPoducts(authService);

      cartProductList = cartProdcutSnapshot.map((doc) {
        final cartProduct =
            CartModel.fromJson(doc.data() as Map<String, dynamic>);

        if (cartProduct.quantity != null) {
          cartItemCount += cartProduct.quantity!;
          subTotal += cartProduct.totalPrice!;
        }
        return cartProduct;
      }).toList();

      emit(
        state.copyWith(
          cartProductList: cartProductList,
          cartItemCount: cartItemCount,
          subTotal: subTotal,
          isLoading: false,
        ),
      );
    });

    on<IncreaseQuantity>((event, emit) async {
      await cartService
          .addToCartOrIncreaseQty(
              isFromCartPage: true,
              productData: ProductModel.fromJson(event.product.toJson()),
              quantity: 1,
              size: event.size,
              authService: authService)
          .then((product) {
        int index = cartProductList.indexWhere((productOnTheCart) {
          return productOnTheCart.id == product.id;
        });
        cartProductList[index] = product;
        cartItemCount++;
        subTotal += product.price!;

        emit(
          state.copyWith(
              cartProductList: cartProductList,
              cartItemCount: cartItemCount,
              subTotal: subTotal),
        );
      });
    });

    on<DecreaseQuantity>((event, emit) async {
      if (event.product.quantity == 1) {
        return;
      }

      await cartService.decreaseCartProductQty(event.product,authService).then((status) {
        cartItemCount--;
        subTotal -= event.product.price!;
        cartProductList[event.index].totalPrice =
            cartProductList[event.index].totalPrice! - event.product.price!;

        emit(
          state.copyWith(
              cartProductList: cartProductList,
              cartItemCount: cartItemCount,
              subTotal: subTotal),
        );
      });
    });

    on<DeleteCartProductEvent>((event, emit) async {
      await cartService.deleteCartProduct(event.product,authService).then((_) {
        cartProductList.removeAt(event.index);

        cartItemCount -= event.product.quantity!;
        subTotal -= event.product.totalPrice!;

        if (cartItemCount == 0) {
          navigatorKey.currentState!.pushReplacementNamed('/home');
        }
        emit(
          state.copyWith(
              cartProductList: cartProductList,
              cartItemCount: cartItemCount,
              subTotal: subTotal),
        );
      });
    });

    on<AddToCart>((event, emit) async {
      await cartService
          .addToCartOrIncreaseQty(
              isFromCartPage: false,
              productData: event.product,
              quantity: event.quantity,
              size: event.size,
              authService: authService)
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

        cartItemCount += event.quantity;
        subTotal += product.price! * event.quantity;

        snackbarKey.currentState
            ?.showSnackBar(const SnackBar(content: Text('Added to bag')));
        emit(
          state.copyWith(
            cartProductList: cartProductList,
            cartItemCount: cartItemCount,
            subTotal: subTotal,
          ),
        );
      });
    });

    on<NavigateToProductScreen>((event, emit) async {
      String size = event.cartProduct.productSize!;
      String cartId = event.cartProduct.id!;
      String productId = cartId.substring(0, cartId.length - size.length);

      await cartService.getProductDataById(productId).then((snapshotList) {
        final ProductModel productData =
            ProductModel.fromJson(snapshotList[0].data());
        navigatorKey.currentState!
            .pushReplacementNamed('/productScreen', arguments: productData);
      });
    });

    on<PlaceOrder>((event, emit) async {
      final goToHome =
          navigatorKey.currentState!.pushReplacementNamed('/account');

      await orderService
          .placeOrder(cartProductList, event.address,authService)
          .then((_) async {
        await cartService.clearCart(authService).then((_) {
          goToHome;
          snackbarKey.currentState?.showSnackBar(const SnackBar(
              content: Text(
                  'The order was successful without payment [No payment gateway integrated]')));
          cartProductList = [];
          subTotal = 0;
          cartItemCount = 0;
          emit(state.copyWith(
            cartProductList: [],
            cartItemCount: 0,
            subTotal: 0,
          ));
        });
      });
    });
  }
}
