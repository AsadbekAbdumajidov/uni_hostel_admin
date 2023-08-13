import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel_admin/core/routes/app_pages.dart';
import 'package:uni_hostel_admin/core/routes/app_routes.dart';
import 'package:uni_hostel_admin/core/themes/app_theme.dart';
import 'package:uni_hostel_admin/di.dart';
import 'package:uni_hostel_admin/presentation/cubit/accepted_order/accepted_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/auth/auth_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/cancelled_order/cancelled_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/edit_status/edit_status_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/new_order/get_new_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/queue_order/queue_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/selected_order/selected_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/side_bar/side_bar_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => inject<SideBarCubit>()),
          BlocProvider(
              create: (context) => inject<AuthCubit>()..checkUserToAuth()),
          BlocProvider(create: (context) => inject<EditStatusCubit>()),
          BlocProvider(
              create: (context) => inject<GetNewOrderCubit>()..getFaculties()),
          BlocProvider(
              create: (context) =>
                  inject<AcceptedOrderCubit>()..getFaculties()),
          BlocProvider(
              create: (context) =>
              inject<SelectedOrderCubit>()),
          BlocProvider(
              create: (context) =>
                  inject<CancelledOrderCubit>()..getFaculties()),
          BlocProvider(
              create: (context) => inject<QueueOrderCubit>()..getFaculties()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Uni hostel admin',
          onGenerateRoute: generateRoute(),
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: MyBehavior(),
              child: child!,
            );
          },
          initialRoute: RouteName.splash.route,
          home: const SplashPage(),
          theme: appThemeData,
        ));
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const ClampingScrollPhysics();
}
