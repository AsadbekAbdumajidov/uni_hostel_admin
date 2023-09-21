import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import '../../../../core/error/error.dart';

class DeleteAdminUseCase extends UseCase<bool, DeleteAdminParams> {
  final IMainRepository _iMainRepository;
  DeleteAdminUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, bool>> call(DeleteAdminParams params) =>
      _iMainRepository.deleteAdmin(params.id);
}

class DeleteAdminParams {
  final int id;

  DeleteAdminParams({required this.id});
}
