import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/utils/service_link.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_order.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_orders_list.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';

import '../../../core/themes/app_text.dart';
import '../../../core/usecase/usecase.dart';
import '../../../data/domain/usecases/main/get_faculties.dart';
import '../../../data/models/order/get_faculties/get_faculties_response.dart';
part 'queue_order_state.dart';
part 'queue_order_cubit.freezed.dart';

class QueueOrderCubit extends Cubit<QueueOrderState> {
  QueueOrderCubit(
      this._orderUsCase, this._getFacultiesUsCase, this._getOrdersListUseCase)
      : super(QueueOrderState());
  final GetOrderUseCase _orderUsCase;
  final GetFacultiesUsCase _getFacultiesUsCase;
  final GetOrdersListUseCase _getOrdersListUseCase;

  Future<void> getQueueOrder() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _orderUsCase.call(GetOrderParams(
      page: 1,
      status: "in_queue",
      search: state.search,
      course: state.courseIndex,
      facultyId: state.facultyIndex?.id,
      maritalStatus: getStatus(),
    ));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(
        state.copyWith(
          hasReachedMax: success.next == null,
          page: 2,
          orderResponse: success,
          orderList: success.results ?? [],
          status: Status.SUCCESS,
        ),
      );
    });
  }

  Future<void> getOrdersList() async {
    emit(state.copyWith(status: Status.UNKNOWN));
    var result = await _getOrdersListUseCase.call(
      GetOrdersListParams(
        search: "",
        maritalStatus: getStatus(),
        status: "in_queue",
        facultyId: state.facultyIndex?.id,
        course: state.courseIndex,
      ),
    );
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.ERROR)),
      (success) {
      emit(state.copyWith(ordersList: success.file, status: Status.SUCCESS));
      ServiceUrl.launchInBrow(state.ordersList ?? "");
    });
  }

  void selectMaritals(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(maritalStatus: "", ));
      getQueueOrder();
    } else {
      emit(state.copyWith(maritalStatus: index, ));
      getQueueOrder();
    }
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
            ));
        getQueueOrder();
      },
    );
  }

  void selectFaculty(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(
          facultyIndex: FacultiesModel(name: "", id: null),
          ));
      getQueueOrder();
    } else {
      for (var i = 0; i < state.facultiesResponse.length; i++) {
        if (index == state.facultiesResponse[i].name) {
          emit(state.copyWith(
              facultyIndex: FacultiesModel(
                  name: state.facultiesResponse[i].name,
                  id: state.facultiesResponse[i].id),
              ));
          getQueueOrder();
        }
      }
    }
  }

  void selectCourse(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(courseIndex: "", ));
      getQueueOrder();
    } else {
      emit(state.copyWith(courseIndex: index, ));
      getQueueOrder();
    }
  }

  void searchQueue(String search) {
    emit(state.copyWith(search: search, ));
    getQueueOrder();
  }

  Future<void> getQueueOrderInfinite() async {
    if (state.hasReachedMax) {
      return;
    }
    emit(state.copyWith(loadingPagination: true));
    var result = await _orderUsCase.call(
      GetOrderParams(
        page: state.page,
        status: "in_queue",
        search: state.search,
        course: state.courseIndex,
        facultyId: state.facultyIndex?.id,
        maritalStatus: getStatus(),
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
        ),
      ),
    );
  }
}
