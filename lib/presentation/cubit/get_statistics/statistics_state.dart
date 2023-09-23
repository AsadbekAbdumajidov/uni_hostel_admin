part of 'statistics_cubit.dart';

@freezed
class StatisticsState with _$StatisticsState {
  const factory StatisticsState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    MainStatisticsResponse? response,
    StudentStatisticsResponse? studentResponse,

   
  }) = _StatisticsState;
}
