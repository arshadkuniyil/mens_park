part of 'home_category_bloc.dart';
 class HomeCategoryState {
   final bool isLoading;
  final ErrorEnum errorEnum;
  final List<CategoryModel> categoryList;

  HomeCategoryState({
    required this.isLoading,
    required this.errorEnum,
    required this.categoryList,
  });
 }

class HomeCategoryInitial extends HomeCategoryState {
    HomeCategoryInitial()
      : super(
            errorEnum: ErrorEnum.noError,
            isLoading: false,
            categoryList: [],
            );
}
