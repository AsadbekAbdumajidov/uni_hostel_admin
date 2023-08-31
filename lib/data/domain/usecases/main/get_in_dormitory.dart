import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/in_dormitory/in_dormitory_response.dart';
import '../../../../core/error/error.dart';

class GetInDormitoryUseCase
    extends UseCase<GetInDormitoryResponse, GetInDormitoryParams> {
  final IMainRepository _iMainRepository;
  GetInDormitoryUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, GetInDormitoryResponse>> call(
          GetInDormitoryParams params) =>
      _iMainRepository.getInDormitory(
        params.page,
            params.course,
         params.facultyId,
        params.search,
    
        params.gender,
        params.dormitory,
       
      );
}

class GetInDormitoryParams {
  final int page;
  final String course;
  final int? facultyId;
  final String search;
  final String? gender;
  final String? dormitory;

  GetInDormitoryParams({
    required this.page,
    required this.course,
    this.facultyId,
    required this.search,
    this.gender,
    this.dormitory,
  });
}
