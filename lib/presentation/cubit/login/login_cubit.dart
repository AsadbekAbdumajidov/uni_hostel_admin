import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/core/error/error.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/domain/usecases/auth/login.dart';
import 'package:uni_hostel_admin/data/models/login/request/login_request_model.dart';
import 'package:uni_hostel_admin/data/models/login/response/login_response_model.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase) : super(LoginState());
  final LoginUseCase _loginUseCase;

  void login() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _loginUseCase.call(
      LoginParams(
        request: LoginRequestModel(
          username: state.userName,
          password: state.password,
        ),
      ),
    );
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (success) async {
      emit(state.copyWith(loginResponseModel: success, status: Status.SUCCESS));
    });
  }

  void getUserName(String userName) async {
    emit(state.copyWith(userName: userName, status: Status.UNKNOWN));
  }

  void getPassword(String password) async {
    emit(state.copyWith(password: password, status: Status.UNKNOWN));
  }

  void changeEye() async {
    emit(state.copyWith(
        changeEye: state.changeEye == true ? false : true,
        status: Status.UNKNOWN));
  }
}
