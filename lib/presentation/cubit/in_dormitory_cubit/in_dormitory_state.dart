part of 'in_dormitory_cubit.dart';

@freezed
class InDormitoryState with _$InDormitoryState {
  const factory InDormitoryState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    GetInDormitoryResponse? orderResponse,
    @Default([]) List<InDormitoryUser> orderList,
    @Default("") String search,
    @Default(1) int page,
    @Default(false) bool hasReachedMax,
    @Default(false) bool loadingPagination,
    @Default([]) List<FacultiesModel> facultiesResponse,
    @Default([]) List<String> facultiesList,
    @Default("") String courseIndex,
    FacultiesModel? facultyIndex,
    @Default("") String? ordersList,
    @Default("") String genderIndex,

  }) = _InDormitoryState;
}
