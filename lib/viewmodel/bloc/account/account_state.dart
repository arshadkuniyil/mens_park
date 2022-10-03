part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState(
      {required List<OrderModel> orderProductList,
      required String displayName,
      required bool isCancelling,
      required bool isLoading}) = _OrderState;
  factory AccountState.initial() =>
      const AccountState(orderProductList: [], isLoading: true, displayName: '', isCancelling: false);
}
