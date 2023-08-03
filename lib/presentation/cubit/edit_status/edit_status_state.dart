part of 'edit_status_cubit.dart';

@freezed
class EditStatusState with _$EditStatusState {
  const factory EditStatusState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    GetOrderResponse? response,

   
  }) = _EditStatusState;
}
