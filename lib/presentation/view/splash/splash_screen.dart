import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uni_hostel_admin/core/routes/app_routes.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_icons.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteName.login.route, (route) => false);
    });
    return Scaffold(
      backgroundColor: AppColors.whiteColor,

      body: Center(
        child: SvgPicture.asset(AppIcons.iconLogo),
      ),
    );
  }
}
