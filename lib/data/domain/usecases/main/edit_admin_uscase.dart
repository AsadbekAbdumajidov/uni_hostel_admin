import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/admin/admin_post/add_admin_request.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
import '../../../../core/error/error.dart';

class EditAdminUseCase extends UseCase<ProfileResponse, EditAdminParams> {
  final IMainRepository _iMainRepository;
  EditAdminUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, ProfileResponse>> call(EditAdminParams params) =>
      _iMainRepository.editAdmin(params.request, params.id, params.file);
}

class EditAdminParams {
  final AddAdminRequest? request;
  final int id;
  final PlatformFile? file;

  EditAdminParams(this.file, this.id, {required this.request});
}
