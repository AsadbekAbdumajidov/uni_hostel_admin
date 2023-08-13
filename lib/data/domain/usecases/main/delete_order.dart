import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import '../../../../core/error/error.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';


class DeleteOrderUseCase extends UseCase<bool, DeleteOrderParams> {
  final IMainRepository _iMainRepository;
  DeleteOrderUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, bool>> call(DeleteOrderParams params) =>
      _iMainRepository.deleteOrder(params.id);
}

class DeleteOrderParams {
  final int id;
  DeleteOrderParams({required this.id});
}
