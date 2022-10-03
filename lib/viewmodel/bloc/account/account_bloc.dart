import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mens_park/model/order_model/order_model.dart';
import 'package:mens_park/viewmodel/service/account_service.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountState.initial()) {
    AccountService accountService = AccountService();
    AuthService authService = AuthService();
    List<OrderModel> orderProductList = [];
    String displayName = '';

    on<LoadOrdersList>((event, emit) async {
      displayName = authService.getUser()!.displayName;

      emit(state.copyWith(displayName: displayName));

      await accountService.getOrdersList().then((orderProductSnapshot) {
        orderProductList = [];
        for (final doc in orderProductSnapshot) {
          orderProductList.add(OrderModel.fromJson(doc.data()));
        }

        emit(state.copyWith(
            isLoading: false, orderProductList: orderProductList));
      });
    });

    on<CancelOrder>((event, emit) async {
      final orderId = '${event.productId}_${event.placedTime}';
      
      emit(state.copyWith(
        isCancelling: true
      ));
      await accountService.cancelOrder(orderId).then((_) {
        log('message');
        orderProductList.removeAt(event.index);
        log(orderProductList.toString());

        emit(state.copyWith(
          orderProductList: orderProductList,
          isCancelling: false
        ));
      });
    });
  }
}