part of 'get_order_cubit.dart';

@freezed
class GetOrderState with _$GetOrderState {
  const factory GetOrderState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    GetOrderResponse? orderResponse,
    @Default([]) List<OrderModel> orderList,

    @Default(1) int page,
    @Default(false) bool hasReachedMax,
    @Default(false) bool loadingPagination,
  }) = _GetOrderState;
}
