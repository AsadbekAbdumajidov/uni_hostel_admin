import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/download_orders_list/download_orders_list_response.dart';
import '../../../../core/error/error.dart';

class GetInDormitoryListUseCase
    extends UseCase<DownloadOrdersListResponse, GetInDormitoryListParams> {
  final IMainRepository _iMainRepository;
  GetInDormitoryListUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, DownloadOrdersListResponse>> call(
          GetInDormitoryListParams params) =>
      _iMainRepository.getInDormitoryList(
        params.search,
        params.course,
        params.facultyId,
        params.gender,
        params.dormitory,
      );
}

class GetInDormitoryListParams {
  final String search;
  final String? course;

  final int? facultyId;
  final String? gender;
  final String? dormitory;
  GetInDormitoryListParams({
    this.course,
    required this.search,
    this.facultyId,
    this.gender,
    this.dormitory,
  });
}
