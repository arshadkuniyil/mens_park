import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/category_model/category_model.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:mens_park/viewmodel/service/cart_service.dart';
import 'package:mens_park/viewmodel/service/home_screen_service.dart';

part 'home_app_bar_event.dart';
part 'home_app_bar_state.dart';

class HomeAppBarBloc extends Bloc<HomeAppBarEvent, HomeAppBarState> {
  HomeAppBarBloc() : super(HomeAppBarInitial()) {
   
    List<CategoryModel> categoryList = [];
    int cartItemCount = 0;
    List<CartModel> cartProductList = [];

    
    
    

    on<LoadCategoriesEvent>(
      (event, emit) async {
        emit(state);

        final categoriesSnaphot =
            await HomeScreenService().getCategoriesFromFirestore();

        if (categoriesSnaphot == null) {
         
        } else if (categoriesSnaphot.isNotEmpty) {
         
        
          categoryList = categoriesSnaphot
              .map((doc) =>
                  CategoryModel.fromJson(doc.data() as Map<String, dynamic>))
              .toList();
       
        }

        emit(HomeAppBarState(
          isLoading: true,
          errorEnum: ErrorEnum.noError,
          categoryList: categoryList,
          cartItemCount: cartItemCount,
          cartProductLst: cartProductList,
        ));

        List<QueryDocumentSnapshot> cartProdcutSnapshot =
            await CartService().getCartPoducts();

        cartProductList = cartProdcutSnapshot.map((doc) {
          final cartProduct =
              CartModel.fromJson(doc.data() as Map<String, dynamic>);

          if (cartProduct.quantity != null) {
            cartItemCount = cartItemCount + cartProduct.quantity!;
          }
          return cartProduct;
        }).toList();

        // emit(state);
      },
    );

    on<IncreaseCartItemCount>((event, emit) {
      cartItemCount++;
      emit(state);
    });
    on<DecreaseCartItemCount>((event, emit) {
      cartItemCount -= event.decreaseCount;
      emit(state);
    });
  }
}
