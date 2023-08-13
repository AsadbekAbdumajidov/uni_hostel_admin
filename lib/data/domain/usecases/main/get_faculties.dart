import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/order/get_faculties/get_faculties_response.dart';


class GetFacultiesUsCase extends UseCase<GetFacultiesResponse, NoParams> {
  final IMainRepository _iMainRepository;
  GetFacultiesUsCase(this._iMainRepository);

  @override
  Future<Either<Failure, GetFacultiesResponse>> call(NoParams params) =>
      _iMainRepository.getFaculties();
}
