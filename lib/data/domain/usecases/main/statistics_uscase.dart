import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/statistics/admin_statistics/admin_statistics_response.dart';
import '../../../../core/error/error.dart';

class StatisticsUseCase extends UseCase<MainStatisticsResponse, NoParams> {
  final IMainRepository _iMainRepository;
  StatisticsUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, MainStatisticsResponse>> call(NoParams params) =>
      _iMainRepository.getMainStatistics();
}


