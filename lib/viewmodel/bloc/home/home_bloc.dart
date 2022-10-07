import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mens_park/model/category_model/category_model.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/services/home_service.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeService homeService) : super(HomeState.initial()) {
    List<CategoryModel> categoryList = [];
    List<ProductModel> productList = [];

    on<GetHomeProducts>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        errorEnum: ErrorEnum.noError,
        productList: productList,
      ));

      List<QueryDocumentSnapshot> productSnaphot =
          await homeService.getProductsFromFirestore(event.categoryName);

      productList = productSnaphot.map((doc) {
        return ProductModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();

      emit(state.copyWith(
        isLoading: false,
        productList: productList,
      ));
    });

    on<GetHomeCategories>(
      (event, emit) async {
        emit(state);

        final categoriesSnaphot =
            await homeService.getCategoriesFromFirestore();

        if (categoriesSnaphot == null) {
        } else if (categoriesSnaphot.isNotEmpty) {
          categoryList = categoriesSnaphot
              .map((doc) =>
                  CategoryModel.fromJson(doc.data() as Map<String, dynamic>))
              .toList();
        }

        emit(state.copyWith(
          isLoading: true,
          errorEnum: ErrorEnum.noError,
          categoryList: categoryList,
        ));
      },
    );
  }
}
