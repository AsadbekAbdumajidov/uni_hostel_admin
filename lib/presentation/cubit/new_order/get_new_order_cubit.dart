import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_new_order.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
part 'get_new_order_state.dart';
part 'get_new_order_cubit.freezed.dart';

class GetNewOrderCubit extends Cubit<GetNewOrderState> {
  GetNewOrderCubit(this._newOrderUsCase) : super(GetNewOrderState());
  final GetNewOrderUseCase _newOrderUsCase;

  Future<void> getNewOrder() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _newOrderUsCase.call(GetNewOrderParams(
        page: 1, search: state.search, maritalStatus: getStatus()));
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.ERROR)),
      (success) => emit(
        state.copyWith(
          hasReachedMax: success.next == null,
          page: 2,
          orderResponse: success,
          orderList: success.results ?? [],
          status: Status.SUCCESS,
        ),
      ),
    );
  }

  String getStatus() {
    for (var i = 0; i < maritals.length; i++) {
      if (maritals[i] == state.maritalStatus) {
        if (AppStrings.strNoneOfThem == state.maritalStatus) {
          return "";
        } else {
          return checkBoxList[i];
        }
      }
    }
    return "";
  }

  void searchRequests(String search) {
    emit(state.copyWith(search: search, status: Status.UNKNOWN));
    getNewOrder();
  }

  void selectMaritals(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(maritalStatus: "", status: Status.UNKNOWN));
      getNewOrder();
    } else {
      emit(state.copyWith(maritalStatus: index, status: Status.UNKNOWN));
      getNewOrder();
    }
  }

  Future<void> getOrderInfinite() async {
    if (state.hasReachedMax) {
      return;
    }
    emit(state.copyWith(loadingPagination: true));
    var result = await _newOrderUsCase.call(
      GetNewOrderParams(
          page: state.page, search: state.search, maritalStatus: getStatus()),
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
