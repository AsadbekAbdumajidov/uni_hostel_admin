import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/admin/admins_get/admins_response.dart';


class GetAdminsUsCase extends UseCase<GetAdminsResponse, NoParams> {
  final IMainRepository _iMainRepository;
  GetAdminsUsCase(this._iMainRepository);

  @override
  Future<Either<Failure, GetAdminsResponse>> call(NoParams params) =>
      _iMainRepository.getAdmins();
}
