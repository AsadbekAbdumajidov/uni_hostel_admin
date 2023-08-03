import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
import '../../../../core/error/error.dart';

class SelectedOrderUseCase
    extends UseCase<SelectOrderResponse, SelectedOrderParams> {
  final IMainRepository _iMainRepository;
  SelectedOrderUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, SelectOrderResponse>> call(
          SelectedOrderParams params) =>
      _iMainRepository.getSelectOrder(params.id);
}

class SelectedOrderParams {
  final int id;
  SelectedOrderParams({required this.id});
}
