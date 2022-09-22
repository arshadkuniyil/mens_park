part of 'home_app_bar_bloc.dart';

class HomeAppBarState {
  final bool isLoading;
  final ErrorEnum errorEnum;
  final List<CategoryModel> categoryList;

  final int? cartItemCount;
  HomeAppBarState(
      {required this.isLoading,
      required this.errorEnum,
      required this.categoryList,
      required this.cartItemCount});
}

class HomeAppBarInitial extends HomeAppBarState {
  HomeAppBarInitial()
      : super(
          errorEnum: ErrorEnum.noError,
          isLoading: false,
          categoryList: [],
          cartItemCount: null
        );
}
