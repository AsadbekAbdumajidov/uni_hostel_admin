part of 'admins_cubit.dart';

@freezed
class AdminsState with _$AdminsState {
  const factory AdminsState({
    @Default(Status.UNKNOWN) Status status,
    @Default(UnknownFailure()) Failure failure,
    @Default([]) List<ProfileResponse?> adminList,
    GetAdminsResponse? response,
    ProfileResponse? adminResponse,
    PlatformFile? pickedImg,
    @Default("") String type,
  }) = _AdminsState;
}
