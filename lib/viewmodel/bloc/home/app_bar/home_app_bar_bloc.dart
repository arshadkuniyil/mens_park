
import 'package:bloc/bloc.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/category_model/category_model.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
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
      },
    );
  }
}
