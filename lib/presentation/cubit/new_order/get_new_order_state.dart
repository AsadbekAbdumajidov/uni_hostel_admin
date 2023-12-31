part of 'get_new_order_cubit.dart';

@freezed
class GetNewOrderState with _$GetNewOrderState {
  const factory GetNewOrderState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    GetOrderResponse? orderResponse,
    @Default([]) List<OrderModel> orderList,
    @Default(1) int page,
    @Default("") String maritalStatus,
    @Default(false) bool hasReachedMax,
    @Default(false) bool loadingPagination,
    @Default("") String search,
    @Default([]) List<FacultiesModel> facultiesResponse,
    @Default([]) List<String> facultiesList,
    FacultiesModel? facultyIndex,
    @Default(null) String? courseIndex,
    @Default("") String? ordersList,
    

  }) = _GetNewOrderState;
}
