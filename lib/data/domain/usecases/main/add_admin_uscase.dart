import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/models/admin/admin_post/add_admin_request.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
import '../../../../core/error/error.dart';

class AddAdminUseCase extends UseCase<ProfileResponse, AddAdminParams> {
  final IMainRepository _iMainRepository;
  AddAdminUseCase(this._iMainRepository);

  @override
  Future<Either<Failure, ProfileResponse>> call(AddAdminParams params) =>
      _iMainRepository.addAdmin(params.request,params.file);
}

class AddAdminParams {
  final AddAdminRequest? request;
  final PlatformFile? file;

  AddAdminParams(this.file, {this.request});
}
