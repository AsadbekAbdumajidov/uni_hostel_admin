import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel_admin/core/usecase/usecase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/auth/check_user_auth.dart';
import 'package:uni_hostel_admin/data/domain/usecases/auth/logout.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._checkUserToAuthUseCase, this._logoutUseCase)
      : super(InitialState());

  final CheckUserToAuthUseCase _checkUserToAuthUseCase;
  final LogoutUseCase _logoutUseCase;

  Future<void> checkUserToAuth() async {
    var result = await _checkUserToAuthUseCase.call(NoParams());
    result.fold(
      (failure) => emit(UnAuthenticatedState()),
      (response) =>
          emit(response ? AuthenticatedState() : UnAuthenticatedState()),
    );
  }

  Future<void> logout() async {
    await _logoutUseCase.call(NoParams());
  }
}
