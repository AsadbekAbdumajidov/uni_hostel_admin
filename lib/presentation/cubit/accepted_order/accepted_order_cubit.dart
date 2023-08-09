import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_order.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
part 'accepted_order_state.dart';
part 'accepted_order_cubit.freezed.dart';

class AcceptedOrderCubit extends Cubit<AcceptedOrderState> {
  AcceptedOrderCubit(this._orderUsCase) : super(AcceptedOrderState());
  final GetOrderUseCase _orderUsCase;

  Future<void> getAcceptedOrder() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _orderUsCase.call(GetOrderParams(
      page: 1,
      status: "accepted",
      search: state.search,
      course: state.courseIndex,
    ));
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

  void searchAccepted(String search) {
    emit(state.copyWith(search: search, status: Status.UNKNOWN));
    getAcceptedOrder();
  }

  void selectCourse(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(courseIndex: "", status: Status.UNKNOWN));
      getAcceptedOrder();
    } else {
      emit(state.copyWith(courseIndex: index, status: Status.UNKNOWN));
      getAcceptedOrder();
    }
  }

  Future<void> getAcceptedOrderInfinite() async {
    if (state.hasReachedMax) {
      return;
    }
    emit(state.copyWith(loadingPagination: true));
    var result = await _orderUsCase.call(
      GetOrderParams(
        page: state.page,
        status: "accepted",
        search: state.search,
        course: state.courseIndex,
      ),
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
