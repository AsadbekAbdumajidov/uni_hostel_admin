// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/add_admin_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_admins_uscase.dart';
import 'package:uni_hostel_admin/data/models/admin/admin_post/add_admin_request.dart';
import 'package:uni_hostel_admin/data/models/admin/admins_get/admins_response.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
part 'admins_state.dart';
part 'admins_cubit.freezed.dart';

class AdminsCubit extends Cubit<AdminsState> {
  AdminsCubit(this._getAdminsUsCase, this._addAdminUseCase)
      : super(AdminsState());
  final GetAdminsUsCase _getAdminsUsCase;
  final AddAdminUseCase _addAdminUseCase;

  Future<void> getAdmins([bool isLoading = true]) async {
    isLoading ? emit(state.copyWith(status: Status.LOADING)) : null;
    var result = await _getAdminsUsCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(
          response: success,
          adminList: success.response ?? [],
          status: Status.SUCCESS));
    });
  }

  void getType(String getType) {
    debugPrint("AAAAAA1= $getType");
    emit(state.copyWith(type: getType));
  }

  /// -------------------------------- ///

  Future<void> addAdmin({
    required String firstName,
    required String lastName,
    required String userName,
    required String region,
  }) async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _addAdminUseCase.call(
      AddAdminParams(
        state.pickedImg,
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
      emit(state.copyWith(adminResponse: success, pickedImg: null,type: "", status: Status.SUCCESS));
    });
  }

  Future pickFile() async {
    try {
      var result = (await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowMultiple: false,
              allowedExtensions: ["jpg", "jpeg"]))
          ?.files;

      var file = result!.first;
      var img = MultipartFile.fromBytes(file.bytes ?? [], filename: file.name);
      debugPrint(file.name);

      emit(state.copyWith(pickedImg: file, status: Status.UNKNOWN));
    } on PlatformException catch (e) {
      debugPrint("Unsopperted operation $e");
    } catch (e) {
      debugPrint("Path error $e");
    }
  }

  /// -------------------------------- ///
}
