import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/routes/app_routes.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/di.dart';
import 'package:uni_hostel_admin/presentation/cubit/auth/auth_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/widget/full_name_information.dart';

class ProfileDrawer extends StatelessWidget {
  ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FullNameInformation(
            title: "Asadbek Abdumajidov",
            subTitle: "Guruh raxbari",
            img: "",
          ),
          SizedBox(height: 20),
          // ProfileDriwerItem(
          //   title: "${AppStrings.strResidenceAddress}:",
          //   subTitle:
          //       "${state.infoResponse?.region} ${state.infoResponse?.district}",
          // ),

          Spacer(),
          TextButton(
            onPressed: () async => await logout(context),
            child: Text(
              AppStrings.strExit,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w500, color: AppColors.whiteColor),
            ),
          ),
        ],
      ).paddingAll(20),
    );
  }

  Future<void> logout(BuildContext context) async {
    await inject<AuthCubit>().logout();

    /// Navigate to Sign in Screen
    Navigator.of(context).pushNamedAndRemoveUntil(
        RouteName.login.route, (Route<dynamic> route) => false);
  }
}
