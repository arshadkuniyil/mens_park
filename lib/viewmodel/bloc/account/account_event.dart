part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.loadOrdersList() = LoadOrdersList;
  const factory AccountEvent.cancelOrder(
   { required String productId ,required String placedTime,required int index,}
  ) = CancelOrder;
}