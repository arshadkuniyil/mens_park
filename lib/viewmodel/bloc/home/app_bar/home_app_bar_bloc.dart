import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/category_model/category_model.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';
import 'package:mens_park/viewmodel/service/cart_service.dart';
import 'package:mens_park/viewmodel/service/home_screen_service.dart';

part 'home_app_bar_event.dart';
part 'home_app_bar_state.dart';

class HomeAppBarBloc extends Bloc<HomeAppBarEvent, HomeAppBarState> {
  HomeAppBarBloc() : super(HomeAppBarInitial()) {
    List<CategoryModel> categoryList = [];
    List<CartModel> cartProductList = [];
    int cartItemCount=0;
    on<LoadCategoriesEvent>(
      (event, emit) async {
        emit(
          HomeAppBarState(
              isLoading: true,
              errorEnum: ErrorEnum.noError,
              categoryList: categoryList,
              cartItemCount: cartItemCount,
              cartProductLst: cartProductList),
        );
        //TODO Handle Error

        List<QueryDocumentSnapshot> categoriesSnaphot =
            await HomeScreenService().getCategoriesFromFirestore();

        categoryList = categoriesSnaphot
            .map((doc) =>
                CategoryModel.fromJson(doc.data() as Map<String, dynamic>))
            .toList();
        emit(
          HomeAppBarState(
              isLoading: true,
              errorEnum: ErrorEnum.noError,
              categoryList: categoryList,
              cartItemCount: cartItemCount,
              cartProductLst: cartProductList),
        );

        List<QueryDocumentSnapshot> cartProdcutSnapshot =
            await CartService().getCartPoducts();
        cartProductList = cartProdcutSnapshot.map((doc) {
        final  cartProduct = CartModel.fromJson(doc.data() as Map<String, dynamic>);
            if (cartProduct.quantity != null) {
            cartItemCount = cartItemCount + cartProduct.quantity!;
          }
          return cartProduct ;
        }).toList();
    
        emit(
          HomeAppBarState(
              isLoading: true,
              errorEnum: ErrorEnum.noError,
              categoryList: categoryList,
              cartItemCount: cartItemCount,
              cartProductLst: cartProductList),
        );
      },
    );
    on<CartEvent>((event, emit) {
      cartItemCount++ ;

      emit(
        HomeAppBarState(
            isLoading: false,
            errorEnum: ErrorEnum.noError,
            categoryList: categoryList,
            cartItemCount: cartItemCount,
            cartProductLst: cartProductList),
      );
    });
  }
}
