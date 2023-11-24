part of 'edit_monthly_price_cubit.dart';

@freezed
class EditMonthlyPriceState with _$EditMonthlyPriceState {
  const factory EditMonthlyPriceState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
  }) = _EditMonthlyPriceState;
}
