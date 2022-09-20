import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mens_park/model/category_model/category_model.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';
import 'package:mens_park/viewmodel/service/home_screen_service.dart';

part 'home_category_event.dart';
part 'home_category_state.dart';

class HomeCategoryBloc extends Bloc<HomeCategoryEvent, HomeCategoryState> {
  HomeCategoryBloc() : super(HomeCategoryInitial()) {
    List<CategoryModel> categoryList = [];

    on<LoadCategoriesEvent>(
      (event, emit) async {
        emit(
          HomeCategoryState(
            isLoading: true,
            errorEnum: ErrorEnum.noError,
            categoryList: categoryList,
          ),
        );
        //TODO Handle Error

        List<QueryDocumentSnapshot> categoriesSnaphot =
            await HomeScreenService().getCategoriesFromFirestore();

        categoryList = categoriesSnaphot
            .map((doc) =>
                CategoryModel.fromJson(doc.data() as Map<String, dynamic>))
            .toList();
        emit(
          HomeCategoryState(
            isLoading: true,
            errorEnum: ErrorEnum.noError,
            categoryList: categoryList,
          ),
        );
      },
    );
  }
}
