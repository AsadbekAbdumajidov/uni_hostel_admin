import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/authorization.dart';


class CheckUserToAuthUseCase extends UseCase<bool, NoParams> {
  final IAuthRepository _authRepository;
  CheckUserToAuthUseCase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) =>
      _authRepository.checkUserToAuth();
}
