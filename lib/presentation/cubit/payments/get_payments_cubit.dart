import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/core/utils/service_link.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_dormitories_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_in_dormitory_list.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/payments_uscase.dart';
import 'package:uni_hostel_admin/data/models/get_dormitory/get_dormitory_response.dart';
import 'package:uni_hostel_admin/data/models/payment_monitoring/payment_monitoring_response.dart';
part 'get_payments_state.dart';
part 'get_payments_cubit.freezed.dart';

class PaymentsCubit extends Cubit<PaymentsState> {
  PaymentsCubit(
      this._paymentsUsCase, this._getOrdersListUseCase, this._dormitoriesUsCase)
      : super(PaymentsState());
  final PaymentsUsCase _paymentsUsCase;
  final GetInDormitoryListUseCase _getOrdersListUseCase;
  final GetDormitoriesUsCase _dormitoriesUsCase;

  Future<void> getdormitories() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _dormitoriesUsCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      debugPrint("AAA ${success[0].name}");
      List<String> list = [];
      for (var i = 0; i < success.length; i++) {
        list.add(success[i].name);
      }
      list.add(AppStrings.strNoneOfThem);
      emit(state.copyWith(
          dormitoryList: list,
          responseDormitories: success,
          status: Status.SUCCESS));
    });
  }

  void selectDormitory(String index) {
    if (index == AppStrings.strNoneOfThem) {
      emit(state.copyWith(dormitoryIndex: ""));
      payments();
    } else {
      int? dormitoryId;
      for (var i = 0; i < state.dormitoryList.length; i++) {
        if (index == state.dormitoryList[i]) {
          dormitoryId = state.responseDormitories[i].id;
        }
      }
      emit(state.copyWith(dormitoryIndex: index, dormitoryId: dormitoryId));
      payments();
    }
  }

  Future<void> payments() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _paymentsUsCase
        .call(PaymentsParams(page: 1, state.search, state.dormitoryId));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(state.copyWith(
          hasReachedMax: success.next == null,
          page: 2,
          response: success,
          whoPaidList: success.results ?? [],
          status: Status.SUCCESS));
      getdormitories();
    });
  }

  Future<void> getDormitoryList() async {
    emit(state.copyWith(status: Status.UNKNOWN));
    var result = await _getOrdersListUseCase.call(
      GetInDormitoryListParams(
        search: "",
        facultyId: null,
        course: null,
        gender: null,
        dormitory: state.dormitoryId.toString(),
      ),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(state.copyWith(paymentList: success.file, status: Status.SUCCESS));
      ServiceUrl.launchInBrow(state.paymentList ?? "");
    });
  }

  void searchRequests(String search) {
    emit(state.copyWith(search: search, status: Status.UNKNOWN));
    payments();
  }

  Future<void> paymentsInfinite() async {
    if (state.hasReachedMax) {
      return;
    }
    emit(state.copyWith(loadingPagination: true));
    var result = await await _paymentsUsCase
        .call(PaymentsParams(page: 1, state.search, state.dormitoryId));
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.ERROR)),
      (response) => emit(
        state.copyWith(
          hasReachedMax: response.next == null,
          page: state.page + 1,
          response: response,
          whoPaidList: List.of(state.whoPaidList)
            ..addAll(response.results ?? []),
          loadingPagination: false,
        ),
      ),
    );
  }
}
