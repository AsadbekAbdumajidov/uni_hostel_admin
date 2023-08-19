import 'package:dartz/dartz.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/request/edit_status_request.dart';
import 'package:uni_hostel_admin/data/models/order/post_order/response/edit_status_response.dart';
import '../../../../core/error/error.dart';

class EditStatusUseCase extends UseCase<EditStatusResponse, EditStatusParams> {
  final IMainRepository _iMainRepository;
  EditStatusUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, EditStatusResponse>> call(EditStatusParams params) =>
      _iMainRepository.editStatus(params.request,params.id);
}

class EditStatusParams {
  final EditStatusRequest request;
  final int id;

  EditStatusParams( {required this.request,required this.id});
}
