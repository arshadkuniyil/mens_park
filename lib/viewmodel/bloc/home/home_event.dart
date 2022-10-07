part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getHomeProducts({required String categoryName}) =
      GetHomeProducts;
  const factory HomeEvent.getHomeCategories() =
      GetHomeCategories;
}
