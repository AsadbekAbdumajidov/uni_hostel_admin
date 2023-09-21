part of 'get_payments_cubit.dart';

@freezed
class PaymentsState with _$PaymentsState {
  const factory PaymentsState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    PaymentMonitoringResponse? response,
    @Default([]) List<PaymentsWhoPaidModel> whoPaidList,
    @Default(1) int page,
    @Default(false) bool hasReachedMax,
    @Default(false) bool loadingPagination,
  }) = _PaymentsState;
}