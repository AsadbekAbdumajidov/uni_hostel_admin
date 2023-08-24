import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';


class GetProfileUsCase extends UseCase<ProfileResponse, NoParams> {
  final IMainRepository _iMainRepository;
  GetProfileUsCase(this._iMainRepository);

  @override
  Future<Either<Failure, ProfileResponse>> call(NoParams params) =>
      _iMainRepository.getProfile();
}
