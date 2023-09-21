import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';

enum RouteName {
  requests(route: "/${AppStrings.strRequests}"),
  students(route: "/${AppStrings.strStudents}"),
  waiting(route: "/${AppStrings.strWaiting}"),
  rejected(route: "/${AppStrings.strRejected}"),
  thoseWhoPaid(route: "/${AppStrings.strThoseWhoPaid}"),
  statistics(route: "/${AppStrings.strStatistics}"),
  inDormitory(route: "/${AppStrings.strInDormitory}"),
  isAdmin(route: "/${AppStrings.strAdmins}"),


  login(route: "/kirish"),
  splash(route: "/splash"),
  ;

  static RouteName? find(String name) =>
      values.firstWhereOrNull((routeName) => routeName.route == name);

  const RouteName({required this.route});

  final String route;
}

abstract class AppRoutes {
  static const apartmentScreen = '/requestScreen';
  static const applicationSenderScreen = '/applicationSenderScreen';
}
