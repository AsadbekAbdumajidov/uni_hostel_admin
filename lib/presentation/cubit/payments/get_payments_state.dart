part of 'get_payments_cubit.dart';

@freezed
class PaymentsState with _$PaymentsState {
  const factory PaymentsState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    PaymentMonitoringResponse? response,
    @Default([]) List<PaymentsWhoPaidModel> whoPaidList,
    @Default([]) List<GetDormitoryResponse> responseDormitories,
    @Default([]) List<String> dormitoryList,
    @Default(1) int page,
    @Default("") String search,
    @Default("") String dormitoryIndex,
    int? dormitoryId,
    @Default("") String? paymentList,
    @Default(false) bool hasReachedMax,
    @Default(false) bool loadingPagination,
    @Default([]) List<FacultiesModel> facultiesResponse,
    @Default([]) List<String> facultiesList,
    FacultiesModel? facultyIndex,
     @Default("") String maritalStatus,
  }) = _PaymentsState;
}
