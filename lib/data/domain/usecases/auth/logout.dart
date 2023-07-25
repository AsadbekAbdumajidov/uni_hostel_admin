import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/authorization.dart';


class LogoutUseCase extends UseCase<bool, NoParams> {
  final IAuthRepository _authRepository;
  LogoutUseCase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) =>
      _authRepository.logout();
}
