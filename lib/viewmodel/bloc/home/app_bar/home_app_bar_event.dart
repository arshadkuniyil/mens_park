part of 'home_app_bar_bloc.dart';

class HomeAppBarEvent {}

class LoadCategoriesEvent extends HomeAppBarEvent {}

class CartEvent extends HomeAppBarEvent {}

class IncreaseCartItemCount extends HomeAppBarEvent {}

class DecreaseCartItemCount extends HomeAppBarEvent {
  final int decreaseCount;

  DecreaseCartItemCount({required this.decreaseCount});
}
