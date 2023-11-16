import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/get_dormitory/get_dormitory_response.dart';


class GetDormitoriesUsCase extends UseCase< List<GetDormitoryResponse>, NoParams> {
  final IMainRepository _iMainRepository;
  GetDormitoriesUsCase(this._iMainRepository);

  @override
  Future<Either<Failure, List<GetDormitoryResponse>>> call(NoParams params) =>
      _iMainRepository.getDormitories();
}
