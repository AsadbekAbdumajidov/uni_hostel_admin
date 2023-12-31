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
import 'package:uni_hostel_admin/data/domain/usecases/main/add_admin_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/delete_admin_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/delete_order.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/edit_admin_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/edit_monthly_price_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/edit_status.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_admins_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_dormitories_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_faculties.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_in_dormitory.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_in_dormitory_list.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_new_order.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_order.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_orders_list.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/get_selected_order.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/payments_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/statistics_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/main/student_statistics_uscase.dart';
import 'package:uni_hostel_admin/data/domain/usecases/profile/get_profile.dart';
import 'package:uni_hostel_admin/data/repository/authorization.dart';
import 'package:uni_hostel_admin/data/repository/main.dart';
import 'package:uni_hostel_admin/presentation/cubit/accepted_order/accepted_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/admin_edit/admin_edit_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/admins/admins_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/auth/auth_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/cancelled_order/cancelled_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/edit_monthly_price/edit_monthly_price_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/edit_status/edit_status_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/get_statistics/statistics_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/in_dormitory_cubit/in_dormitory_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/login/login_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/new_order/get_new_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/payments/get_payments_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/profile/profile_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/queue_order/queue_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/selected_order/selected_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/side_bar/side_bar_cubit.dart';

final inject = GetIt.instance;

Future<void> initDi() async {
  // cubits need register
  inject.registerFactory(() => AuthCubit(inject(), inject()));
  inject.registerFactory(() => LoginCubit(inject()));
  inject.registerFactory(() => SideBarCubit());
  inject.registerFactory(() => GetNewOrderCubit(inject(), inject(), inject()));
  inject.registerFactory(() => SelectedOrderCubit(inject(), inject()));
  inject.registerFactory(() => EditStatusCubit(inject()));
  inject
      .registerFactory(() => AcceptedOrderCubit(inject(), inject(), inject()));
  inject
      .registerFactory(() => CancelledOrderCubit(inject(), inject(), inject()));
  inject.registerFactory(() => QueueOrderCubit(inject(), inject(), inject()));
  inject.registerFactory(() => InDormitoryCubit(inject(), inject(), inject()));
  inject.registerFactory(() => ProfileCubit(inject()));
  inject.registerFactory(() => PaymentsCubit(inject(),inject(),inject(),inject()));
  inject.registerFactory(() => StatisticsCubit(inject(),inject()));
  inject.registerFactory(() => AdminEditCubit(inject(),inject()));
  inject.registerFactory(() => AdminsCubit(inject(), inject()));
  inject.registerFactory(() => EditMonthlyPriceCubit(inject()));


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
  inject.registerLazySingleton(() => GetOrdersListUseCase(inject()));
  inject.registerLazySingleton(() => GetProfileUsCase(inject()));
  inject.registerLazySingleton(() => GetInDormitoryListUseCase(inject()));
  inject.registerLazySingleton(() => GetInDormitoryUseCase(inject()));
  inject.registerLazySingleton(() => PaymentsUsCase(inject()));
  inject.registerLazySingleton(() => GetAdminsUsCase(inject()));
  inject.registerLazySingleton(() => AddAdminUseCase(inject()));
  inject.registerLazySingleton(() => EditAdminUseCase(inject()));
  inject.registerLazySingleton(() => DeleteAdminUseCase(inject()));
  inject.registerLazySingleton(() => StatisticsUseCase(inject()));
  inject.registerLazySingleton(() => StudentStatisticsUseCase(inject()));
  inject.registerLazySingleton(() => GetDormitoriesUsCase(inject()));
  inject.registerLazySingleton(() => EditMonthlyPriceUseCase(inject()));


  // repository init
  inject.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(inject(), inject()));
  inject.registerLazySingleton<IMainRepository>(
      () => MainRepository(inject(), inject()));

  // local source init
  var pref = await SharedPreferences.getInstance();
  inject.registerLazySingleton(() => pref);

  // api client init for network requests
  inject.registerFactory(() => NetworkClient());
  var dio = await inject<NetworkClient>().init(inject());
  inject.registerFactory(() => ApiClient(dio, BASE_URL));
}
