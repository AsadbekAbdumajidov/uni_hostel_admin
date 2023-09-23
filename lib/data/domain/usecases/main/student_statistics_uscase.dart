import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/statistics/student_statistics/student_statistics_response.dart';
import '../../../../core/error/error.dart';

class StudentStatisticsUseCase extends UseCase<StudentStatisticsResponse, NoParams> {
  final IMainRepository _iMainRepository;
  StudentStatisticsUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, StudentStatisticsResponse>> call(NoParams params) =>
      _iMainRepository.getStudentStatistics();
}


