import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/routes/app_routes.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/presentation/view/auth/login_screen.dart';
import 'package:uni_hostel_admin/presentation/view/splash/splash_screen.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/in_dormitory/in_dormitory_screen.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/payment_monitoring_screen.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/rejected/rejected_screen.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/requests/request_screen.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/statistics_screen.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/students/student_request.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/waiting/waiting_request.dart';

RouteFactory generateRoute() {
  return (settings) {
    final name = settings.name;
    if (name == null) {
      return MaterialPageRoute(builder: (_) => const SplashPage());
    }
    final routeName = RouteName.find(name);
    if (routeName == null) {
      return MaterialPageRoute(builder: (_) => const SplashPage());
    }
    switch (routeName) {
      case RouteName.requests:
        return _createPageRoute(RequestsScreen(), routeName);
      case RouteName.login:
        return _createPageRoute(LoginPage(), routeName);
      case RouteName.splash:
        return _createPageRoute(const SplashPage(), routeName);
      case RouteName.students:
        return _createPageRoute(StudentsScreen(), routeName);
      case RouteName.waiting:
        return _createPageRoute(WaitingScreen(), routeName);
      case RouteName.rejected:
        return _createPageRoute(RejectedScreen(), routeName);
      case RouteName.thoseWhoPaid:
        return _createPageRoute(PaymentMonitoring(), routeName);
      case RouteName.statistics:
        return _createPageRoute(StatisticsScreen(), routeName);
      case RouteName.inDormitory:
        return _createPageRoute(InDormitoryScreen(), routeName);
    }
  };
}

// Route? innerNavigation(RouteSettings settings) {
//   switch (settings.name) {

//     case AppRoutes.apartmentScreen:
//       return MaterialPageRoute(
//         builder: (context) =>  ApartmentScreen(),
//       );
//      case AppRoutes.applicationSenderScreen:
//       return MaterialPageRoute(
//         builder: (context) =>  ApplicationSenderScreen(),
//       );
//   }
//   return null;
// }

pushInnerNavigationOffAll(String routeName) {
  return navigatorKey.currentState!
      .pushNamedAndRemoveUntil(routeName, ModalRoute.withName('/'));
}

pushInnerNavigation(String routeName, {args}) {
  return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
}

popInnerNavigation() {
  return navigatorKey.currentState!.pop("update");
}

Route _createPageRoute(Widget page, RouteName routeName) {
  return MaterialPageRoute(
    builder: (_) => page,
    settings: RouteSettings(name: routeName.name),
  );
}
