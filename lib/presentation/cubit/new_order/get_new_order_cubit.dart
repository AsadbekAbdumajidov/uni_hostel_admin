import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/core/utils/service_link.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_faculties.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_new_order.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_orders_list.dart';
import 'package:uni_hostel_admin/data/models/order/get_faculties/get_faculties_response.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
part 'get_new_order_state.dart';
part 'get_new_order_cubit.freezed.dart';

class GetNewOrderCubit extends Cubit<GetNewOrderState> {
  GetNewOrderCubit(this._newOrderUsCase, this._getFacultiesUsCase,
      this._getOrdersListUseCase)
      : super(GetNewOrderState());
  final GetNewOrderUseCase _newOrderUsCase;
  final GetFacultiesUsCase _getFacultiesUsCase;
  final GetOrdersListUseCase _getOrdersListUseCase;

  Future<void> getNewOrder() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _newOrderUsCase.call(
      GetNewOrderParams(
        page: 1,
        search: state.search,
        maritalStatus: getStatus(),
        faculty: state.facultyIndex?.id,
        course: state.courseIndex ?? null,
      ),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(state.copyWith(
          hasReachedMax: success.next == null,
          page: 2,
          orderResponse: success,
          orderList: success.results ?? [],
          status: Status.SUCCESS));
    });
  }

  Future<void> getOrdersList() async {
    emit(state.copyWith(status: Status.UNKNOWN));
    var result = await _getOrdersListUseCase.call(
      GetOrdersListParams(
        search: "",
        status: "",
        maritalStatus: getStatus(),
        facultyId: state.facultyIndex?.id,
        course: state.courseIndex ?? "",
      ),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(state.copyWith(ordersList: success.file, status: Status.SUCCESS));
      ServiceUrl.launchInBrow(success.file ?? "");
    });
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
        getNewOrder();
      },
    );
  }

  void selectFaculty(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(
          facultyIndex: FacultiesModel(name: "", id: null),
          status: Status.UNKNOWN));
      getNewOrder();
    } else {
      for (var i = 0; i < state.facultiesResponse.length; i++) {
        if (index == state.facultiesResponse[i].name) {
          emit(state.copyWith(
            facultyIndex: FacultiesModel(
                name: state.facultiesResponse[i].name,
                id: state.facultiesResponse[i].id),
          ));
          getNewOrder();
        }
      }
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

  void selectCourse(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(courseIndex: null));
      getNewOrder();
    } else {
      emit(state.copyWith(courseIndex: index));
      getNewOrder();
    }
  }

  void searchRequests(String search) {
    emit(state.copyWith(search: search, status: Status.UNKNOWN));
    getNewOrder();
  }

  void selectMaritals(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(maritalStatus: ""));
      getNewOrder();
    } else {
      emit(state.copyWith(maritalStatus: index));
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
        page: state.page,
        search: state.search,
        maritalStatus: getStatus(),
        faculty: state.facultyIndex?.id,
        course: state.courseIndex ?? null,
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
