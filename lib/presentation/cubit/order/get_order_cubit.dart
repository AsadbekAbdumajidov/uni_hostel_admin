import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_order.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
part 'get_order_state.dart';
part 'get_order_cubit.freezed.dart';

class GetOrderCubit extends Cubit<GetOrderState> {
  GetOrderCubit(this._orderUsCase) : super(GetOrderState());
  final GetOrderUseCase _orderUsCase;

  Future<void> getOrder() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _orderUsCase.call(GetOrderParams(page: 1));
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.ERROR)),
      (success) => emit(
        state.copyWith(
          hasReachedMax: success.next == null,
          page: 2,
          orderResponse: success,
          orderList: success.results??[],
          status: Status.SUCCESS,
        ),
      ),
    );
  }

  Future<void> getOrderInfinite() async {
    if (state.hasReachedMax) {
      return;
    }
    emit(state.copyWith(loadingPagination: true));
    var result = await _orderUsCase.call(
      GetOrderParams(page: state.page),
    );
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.ERROR)),
      (response) => emit(
        state.copyWith(
          hasReachedMax: response.next == null,
          page: state.page + 1,
          orderResponse: response,
          orderList: List.of(state.orderList)..addAll(response.results ?? []),
          loadingPagination: false,
          status: Status.SUCCESS,
        ),

      ),
    );
  }
}
