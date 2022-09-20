part of 'home_product_bloc.dart';

class HomeProductEvent {}

class GetHomeProductsEvent extends HomeProductEvent {
   final String categoryName;

  GetHomeProductsEvent({required this.categoryName});
}
