import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/profile/get_profile.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';

import '../../../core/usecase/usecase.dart';
part 'profile\_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._getProfileUsCase) : super(ProfileState());
  final GetProfileUsCase _getProfileUsCase;

  Future<void> getProfile() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _getProfileUsCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) {
      emit(
        state.copyWith(response: success, status: Status.SUCCESS),
      );
    });
  }
}
