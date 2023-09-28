part of 'admin_edit_cubit.dart';

@freezed
class AdminEditState with _$AdminEditState {
  const factory AdminEditState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    ProfileResponse? adminResponse,
    PlatformFile? pickedImg,
    FacultiesModel? facultyIndex,
    String? file,
    String? type,
  }) = _AdminEditState;
}
