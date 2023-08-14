import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_hostel_admin/core/network_client/network_client.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/data/data_source/provider.dart';
import 'package:uni_hostel_admin/data/domain/repository/authorization.dart';
import 'package:uni_hostel_admin/data/domain/repository/main.dart';
import 'package:uni_hostel_admin/data/domain/usecases/auth/check_user_auth.dart';
import 'package:uni_hostel_admin/data/domain/usecases/auth/login.dart';
import 'package:uni_hostel_admin/data/domain/usecases/auth/logout.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/delete_order.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/edit_status.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_faculties.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_new_order.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_order.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_selected_order.dart';
import 'package:uni_hostel_admin/data/repository/authorization.dart';
import 'package:uni_hostel_admin/data/repository/main.dart';
import 'package:uni_hostel_admin/presentation/cubit/accepted_order/accepted_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/auth/auth_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/cancelled_order/cancelled_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/edit_status/edit_status_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/login/login_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/new_order/get_new_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/queue_order/queue_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/selected_order/selected_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/side_bar/side_bar_cubit.dart';

final inject = GetIt.instance;

Future<void> initDi() async {
  // cubits need register
  inject.registerFactory(() => AuthCubit(inject(), inject()));
  inject.registerFactory(() => LoginCubit(inject()));
  inject.registerFactory(() => SideBarCubit());
  inject.registerFactory(() => GetNewOrderCubit(inject(), inject()));
  inject.registerFactory(() => SelectedOrderCubit(inject(),inject()));
  inject.registerFactory(() => EditStatusCubit(inject()));
  inject.registerFactory(() => AcceptedOrderCubit(inject(), inject()));
  inject.registerFactory(() => CancelledOrderCubit(inject(), inject()));
  inject.registerFactory(() => QueueOrderCubit(inject(), inject()));

  // use case need to register
  inject.registerFactory(() => LoginUseCase(inject()));
  inject.registerLazySingleton(() => CheckUserToAuthUseCase(inject()));
  inject.registerLazySingleton(() => LogoutUseCase(inject()));
  inject.registerLazySingleton(() => GetOrderUseCase(inject()));
  inject.registerLazySingleton(() => GetNewOrderUseCase(inject()));
  inject.registerLazySingleton(() => SelectedOrderUseCase(inject()));
  inject.registerLazySingleton(() => EditStatusUseCase(inject()));
  inject.registerLazySingleton(() => DeleteOrderUseCase(inject()));
  inject.registerLazySingleton(() => GetFacultiesUsCase(inject()));

  // repository init
  inject.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(inject(), inject()));
  inject.registerLazySingleton<IMainRepository>(() => MainRepository(inject()));

  // local source init
  var pref = await SharedPreferences.getInstance();
  inject.registerLazySingleton(() => pref);

  // api client init for network requests
  inject.registerFactory(() => NetworkClient());
  var dio = await inject<NetworkClient>().init(inject());
  inject.registerFactory(() => ApiClient(dio, BASE_URL));
}
