
import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/data/models/login/request/login_request_model.dart';
import 'package:uni_hostel_admin/data/models/login/response/login_response_model.dart';



abstract class IAuthRepository {
  Future<Either<Failure, bool>> checkUserToAuth();
  Future<Either<Failure, bool>> logout();
  Future<Either<Failure, LoginResponseModel>> login(
      LoginRequestModel requestModel);
}
