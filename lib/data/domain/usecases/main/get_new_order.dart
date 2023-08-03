import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import '../../../../core/error/error.dart';

class GetNewOrderUseCase extends UseCase<GetOrderResponse, GetNewOrderParams> {
  final IMainRepository _iMainRepository;
  GetNewOrderUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, GetOrderResponse>> call(GetNewOrderParams params) =>
      _iMainRepository.getNewOrder(params.page, params.search);
}

class GetNewOrderParams {
  final int page;
  final String search;

  GetNewOrderParams({
    required this.page,
    required this.search,
  });
}
