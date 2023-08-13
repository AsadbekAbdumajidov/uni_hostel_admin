part of 'queue_order_cubit.dart';

@freezed
class QueueOrderState with _$QueueOrderState {
  const factory QueueOrderState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    GetOrderResponse? orderResponse,
    @Default([]) List<OrderModel> orderList,
    @Default(1) int page,
    @Default("") String search,
    @Default(false) bool hasReachedMax,
    @Default(false) bool loadingPagination,
    @Default([]) List<FacultiesModel> facultiesResponse,
    @Default([]) List<String> facultiesList,
    @Default("") String courseIndex,
    FacultiesModel? facultyIndex,
  }) = _QueueOrderState;
}
