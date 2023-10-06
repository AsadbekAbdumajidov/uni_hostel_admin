import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/download_orders_list/download_orders_list_response.dart';
import '../../../../core/error/error.dart';

class GetOrdersListUseCase
    extends UseCase<DownloadOrdersListResponse, GetOrdersListParams> {
  final IMainRepository _iMainRepository;
  GetOrdersListUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, DownloadOrdersListResponse>> call(
          GetOrdersListParams params) =>
      _iMainRepository.getOrdersList(
        params.maritalStatus,
        params.status,
        params.course,
        params.facultyId,
        params.search,
        params.waitingS,
        params.inDormitory
      );
}

class GetOrdersListParams {
  final String status;
  final String maritalStatus;
  final String? course;
  final String search;
  final int? facultyId;
  final String? waitingS;
  final String? inDormitory;


  GetOrdersListParams( {
    required this.status,
    required this.maritalStatus,
    this.course,
    required this.search,
    this.facultyId,
    this.waitingS,
    this.inDormitory
  });
}
