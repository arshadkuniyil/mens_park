import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mens_park/model/order_model/order_model.dart';
import 'package:mens_park/res/global/global.dart';
import 'package:mens_park/services/auth_services.dart';
import 'package:mens_park/services/order_service.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

@injectable
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(AuthService authService , OrderService orderService) : super(AccountState.initial()) {
   
  
    List<OrderModel> orderProductList = [];
    String displayName = '';

    on<LoadOrdersList>((event, emit) async {
      displayName = authService.getUser()!.displayName!;

      emit(state.copyWith(displayName: displayName));

      await orderService.getOrdersList(authService).then((orderProductSnapshot) {
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

      emit(state.copyWith(isCancelling: true));
      await orderService.cancelOrder(orderId,authService).then((_) {
        orderProductList.removeAt(event.index);

        emit(state.copyWith(
            orderProductList: orderProductList, isCancelling: false));
      });
    });

    on<LogOut>((event, emit) async {
      authService.signOut();
    
      navigatorKey.currentState!
          .pushNamedAndRemoveUntil('/signUp', (route) => false);
    });
  }
}
