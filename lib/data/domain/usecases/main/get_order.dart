import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import '../../../../core/error/error.dart';

class GetOrderUseCase extends UseCase<GetOrderResponse, GetOrderParams> {
  final IMainRepository _iMainRepository;
  GetOrderUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, GetOrderResponse>> call(GetOrderParams params) =>
      _iMainRepository.getOrder(params.page, params.status, params.search,
          params.course, params.facultyId);
}

class GetOrderParams {
  final int page;
  final String status;
  final String course;
  final String search;
  final int? facultyId;
  GetOrderParams({
    required this.page,
    required this.status,
    required this.course,
    required this.search,
     this.facultyId,
  });
}
