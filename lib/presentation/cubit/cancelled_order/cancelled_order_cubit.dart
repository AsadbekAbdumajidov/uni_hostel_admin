import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_order.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';

import '../../../core/themes/app_text.dart';
import '../../../core/usecase/usecase.dart';
import '../../../data/domain/usecases/main/get_faculties.dart';
import '../../../data/models/order/get_faculties/get_faculties_response.dart';
part 'cancelled_order_state.dart';
part 'cancelled_order_cubit.freezed.dart';

class CancelledOrderCubit extends Cubit<CancelledOrderState> {
  CancelledOrderCubit(this._orderUsCase, this._getFacultiesUsCase) : super(CancelledOrderState());
  final GetOrderUseCase _orderUsCase;
  final GetFacultiesUsCase _getFacultiesUsCase;

  Future<void> getCancelledOrder() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _orderUsCase.call(GetOrderParams(
      page: 1,
      status: "cancelled",
      search: state.search,
      course: state.courseIndex,
      facultyId: state.facultyIndex?.id,    ));
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

  Future<void> getFaculties() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _getFacultiesUsCase.call(NoParams());
    result.fold(
          (failure) => emit(state.copyWith(failure: failure, status: Status.ERROR)),
          (success) {
        List<String> list = [];
        for (var i = 0; i < success.response!.length; i++) {
          list.add(success.response?[i].name ?? "");
        }
        list.add(AppStrings.strNoneOfThem);
        emit(state.copyWith(
            facultiesList: list,
            facultiesResponse: success.response ?? [],
            status: Status.SUCCESS));
        getCancelledOrder();
      },
    );
  }


  void selectFaculty(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(
          facultyIndex: FacultiesModel(name: "", id: null),
          status: Status.UNKNOWN));
      getCancelledOrder();
    } else {
      for (var i = 0; i < state.facultiesResponse.length; i++) {
        if (index == state.facultiesResponse[i].name) {
          emit(state.copyWith(
              facultyIndex: FacultiesModel(
                  name: state.facultiesResponse[i].name,
                  id: state.facultiesResponse[i].id),
              status: Status.UNKNOWN));
          getCancelledOrder();
        }
      }


    }
  }

  void selectCourse(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(courseIndex: "", status: Status.UNKNOWN));
      getCancelledOrder();
    } else {
      emit(state.copyWith(courseIndex: index, status: Status.UNKNOWN));
      getCancelledOrder();
    }
  }


  void searchCancelled(String search) {
    emit(state.copyWith(search: search, status: Status.UNKNOWN));
    getCancelledOrder();
  }

  Future<void> getCancelledOrderInfinite() async {
    if (state.hasReachedMax) {
      return;
    }
    emit(state.copyWith(loadingPagination: true));
    var result = await _orderUsCase.call(
      GetOrderParams(
        page: state.page,
        status: "cancelled",
        search: state.search,
        course: state.courseIndex,
        facultyId: state.facultyIndex?.id,      ),
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
