
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';
import 'package:mens_park/viewmodel/service/home_screen_service.dart';
part 'home_product_event.dart';
part 'home_product_state.dart';

class HomeProductBloc extends Bloc<HomeProductEvent, HomeProductState> {
  HomeProductBloc() : super(HomeProductInitial()) {
    List<ProductModel> productList = [];

    on<GetHomeProductsEvent>((event, emit) async {
      emit(HomeProductState(
        isLoading: true,
        errorEnum: ErrorEnum.noError,
        productList: productList,
      ));
      //TODO Handle Error

      List<QueryDocumentSnapshot> productSnaphot = await HomeScreenService()
          .getProductsFromFirestore(event.categoryName);

      productList = productSnaphot
          .map((doc) =>
              ProductModel.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      emit(HomeProductState(
        isLoading: false,
        errorEnum: ErrorEnum.noError,
        productList: productList,
      ));
    });
  }
}
