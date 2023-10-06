import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/payments_uscase.dart';
import 'package:uni_hostel_admin/data/models/payment_monitoring/payment_monitoring_response.dart';
part 'get_payments_state.dart';
part 'get_payments_cubit.freezed.dart';

class PaymentsCubit extends Cubit<PaymentsState> {
  PaymentsCubit(this._paymentsUsCase) : super(PaymentsState());
  final PaymentsUsCase _paymentsUsCase;

  Future<void> payments() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _paymentsUsCase.call(PaymentsParams(
      page: 1,
      state.search,
    ));
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
    var result = await await _paymentsUsCase.call(PaymentsParams(page: 1,state.search));
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
