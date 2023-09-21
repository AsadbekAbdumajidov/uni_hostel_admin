import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/delete_admin_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/edit_admin_uscase.dart';
import 'package:uni_hostel_admin/data/models/admin/admin_post/add_admin_request.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
part 'admin_edit_state.dart';
part 'admin_edit_cubit.freezed.dart';

class AdminEditCubit extends Cubit<AdminEditState> {
  AdminEditCubit(this._editAdminUseCase, this._deleteAdminUseCase)
      : super(AdminEditState());
  final EditAdminUseCase _editAdminUseCase;
  final DeleteAdminUseCase _deleteAdminUseCase;

  /// ---------------- Delete admin --------------------- ///

  Future<void> deleteAdmin({required int id}) async {
    emit(state.copyWith(status: Status.OTHER));
    var result = await _deleteAdminUseCase.call(
      DeleteAdminParams(id: id),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(status: Status.SUCCESS));
    });
  }

  /// ---------------- Edit admin --------------------- ///

  Future pickFile({
    required int id,
    required String firstName,
    required String lastName,
    required String userName,
    required String region,
  }) async {
    try {
      var result = (await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowMultiple: false,
              allowedExtensions: ["jpg", "jpeg"]))
          ?.files;

      var file = result!.first;
      emit(state.copyWith(pickedImg: file, status: Status.UNKNOWN));
      await editAdmin(
        id: id,
        firstName: firstName,
        lastName: lastName,
        userName: userName,
        region: region,
      );
    } on PlatformException catch (e) {
      debugPrint("Unsopperted operation $e");
    } catch (e) {
      debugPrint("Path error $e");
    }
  }

  Future<void> editAdmin({
    bool isLoading = true,
    required int id,
    required String firstName,
    required String lastName,
    required String userName,
    required String region,
  }) async {
    isLoading ? emit(state.copyWith(status: Status.LOADING)) : null;
    var result = await _editAdminUseCase.call(
      EditAdminParams(
        state.pickedImg,
        id,
        request: AddAdminRequest(
          firstName: firstName,
          lastName: lastName,
          username: userName,
          type: state.type,
          region: region,
        ),
      ),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(
          adminResponse: success, status: Status.SUCCESS));
    });
  }

  void getType(String? getType) {
    debugPrint("AAAAAA1= $getType");
    emit(state.copyWith(type: getType));
  }
}
