import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/viewmodel/bloc/home/app_bar/home_app_bar_bloc.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';
import 'package:mens_park/viewmodel/service/cart_service.dart';
import 'package:mens_park/viewmodel/service/home_screen_service.dart';
part 'home_product_event.dart';
part 'home_product_state.dart';

class HomeProductBloc extends Bloc<HomeProductEvent, HomeProductState> {
  HomeProductBloc() : super(HomeProductInitial()) {
    List<ProductModel> productList = [];

    on<GetHomeProductsEvent>((event, emit) async {
      log('gethome bloc');
      emit(HomeProductState(
        isLoading: true,
        errorEnum: ErrorEnum.noError,
        productList: productList,
      ));
      //TODO Handle Error

      List<QueryDocumentSnapshot> productSnaphot = await HomeScreenService()
          .getProductsFromFirestore(event.categoryName);

      productList = productSnaphot.map((doc) {
        return ProductModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();

      emit(HomeProductState(
        isLoading: false,
        errorEnum: ErrorEnum.noError,
        productList: productList,
      ));
    });

    on<AddToCartEvent>((event, emit) async {
      final updateUi = event.context.read<HomeAppBarBloc>().add(CartEvent());
      await CartService().addToCart(event.product, event.size);
      //TODO ERROR HANDLE
      updateUi;
    });
  }
}
