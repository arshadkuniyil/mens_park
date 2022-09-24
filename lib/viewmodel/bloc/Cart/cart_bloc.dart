import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/viewmodel/bloc/home/app_bar/home_app_bar_bloc.dart';
import 'package:mens_park/viewmodel/service/cart_service.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    List<CartModel> cartProductList = [];
    int cartItemCount = 0;
    int subTotal = 0;
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
          await CartService().getCartPoducts();

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
      await CartService().addToCart(event.product, event.size).then((product) {
        int index = cartProductList.indexWhere((productOnTheCart) {
          return productOnTheCart.id == product.id;
        });
        cartProductList[index] = product;
        cartItemCount++;
        subTotal += product.price!;

        event.context.read<HomeAppBarBloc>().add(IncreaseCartItemCount());

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

      await CartService().decreaseCartProductQty(event.product).then((status) {
        log('${event.index}');

        cartItemCount--;
        subTotal -= event.product.price!;
        cartProductList[event.index].totalPrice =
            cartProductList[event.index].totalPrice! - event.product.price!;

        event.context
            .read<HomeAppBarBloc>()
            .add(DecreaseCartItemCount(decreaseCount: 1));

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
      CartService().deleteCartProduct(event.product);
      cartProductList.removeAt(event.index);
      cartItemCount -= event.product.quantity!;
      subTotal -= event.product.totalPrice!;

      event.context
          .read<HomeAppBarBloc>()
          .add(DecreaseCartItemCount(decreaseCount: event.product.quantity!));

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
  }
}
