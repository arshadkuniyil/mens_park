import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mens_park/model/category_model/category_model.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';
import 'package:mens_park/viewmodel/service/home_screen_service.dart';

part 'home_app_bar_event.dart';
part 'home_app_bar_state.dart';

class HomeAppBarBloc extends Bloc<HomeAppBarEvent, HomeAppBarState> {
  HomeAppBarBloc() : super(HomeAppBarInitial()) {
    List<CategoryModel> categoryList = [];
    int? cartItemCount;
    on<LoadCategoriesEvent>(
      (event, emit) async {
      
        emit(
          HomeAppBarState(
              isLoading: true,
              errorEnum: ErrorEnum.noError,
              categoryList: categoryList,
              cartItemCount: cartItemCount),
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
              cartItemCount: cartItemCount),
        );
      },
    );
    on<CartEvent>((event, emit) {
      
      cartItemCount = cartItemCount == null ? 1 : cartItemCount! + 1;
  
      emit(
        HomeAppBarState(
            isLoading: true,
            errorEnum: ErrorEnum.noError,
            categoryList: categoryList,
            cartItemCount: cartItemCount),
      );
    });
  }
}
