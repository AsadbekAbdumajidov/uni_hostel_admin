part of 'accepted_order_cubit.dart';

@freezed
class AcceptedOrderState with _$AcceptedOrderState {
  const factory AcceptedOrderState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    GetOrderResponse? orderResponse,
    @Default([]) List<OrderModel> orderList,
    @Default("") String search,
    @Default(1) int page,
    @Default(false) bool hasReachedMax,
    @Default(false) bool loadingPagination,
    @Default([]) List<FacultiesModel> facultiesResponse,
    @Default([]) List<String> facultiesList,
    @Default("") String courseIndex,
    FacultiesModel? facultyIndex,
    @Default("") String maritalStatus,
    @Default("") String? ordersList,
    @Default("") String? inDormitory,
  }) = _AcceptedOrderState;
}
