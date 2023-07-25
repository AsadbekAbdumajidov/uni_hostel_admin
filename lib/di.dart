import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_hostel_admin/core/network_client/network_client.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/data_source/provider.dart';
import 'package:uni_hostel_admin/data/domain/repository/authorization.dart';
import 'package:uni_hostel_admin/data/domain/usecases/auth/check_user_auth.dart';
import 'package:uni_hostel_admin/data/domain/usecases/auth/login.dart';
import 'package:uni_hostel_admin/data/domain/usecases/auth/logout.dart';
import 'package:uni_hostel_admin/data/repository/authorization.dart';
import 'package:uni_hostel_admin/presentation/cubit/auth/auth_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/login/login_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/side_bar/side_bar_cubit.dart';

final inject = GetIt.instance;

Future<void> initDi() async {
  // cubits need register
  inject.registerFactory(() => AuthCubit(inject(), inject()));
  inject.registerFactory(() => LoginCubit(inject()));
  inject.registerFactory(() => SideBarCubit());

  // use case need to register
  inject.registerFactory(() => LoginUseCase(inject()));
  inject.registerLazySingleton(() => CheckUserToAuthUseCase(inject()));
  inject.registerLazySingleton(() => LogoutUseCase(inject()));

  // repository init
  inject.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(inject(), inject()));

  // local source init
  var pref = await SharedPreferences.getInstance();
  inject.registerLazySingleton(() => pref);

  // api client init for network requests
  inject.registerFactory(() => NetworkClient());
  var dio = await inject<NetworkClient>().init(inject());
  inject.registerFactory(() => ApiClient(dio, BASE_URL));
}
