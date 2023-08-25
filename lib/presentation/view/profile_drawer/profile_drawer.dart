import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/routes/app_routes.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/di.dart';
import 'package:uni_hostel_admin/presentation/components/flush_bars.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/cubit/auth/auth_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/profile/profile_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/widget/full_name_information.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/widget/profile_driwer_item.dart';

import '../../components/responsiveness.dart';

class ProfileDrawer extends StatelessWidget {
  ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child:
          BlocConsumer<ProfileCubit, ProfileState>(listener: (context, state) {
        if (state.status == Status.ERROR) {
          showErrorMessage(context, state.failure.getLocalizedMessage(context));
        }
      }, builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (state.status == Status.LOADING)
                ? LoadingWidget(color: AppColors.whiteColor)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: ResponsiveWidget.isMobile(context) ? 40 : 0),
                      FullNameInformation(
                        title:
                            "${state.response?.firstName} ${state.response?.lastName}",
                        subTitle: "@${state.response?.username}",
                        img: state.response?.image ?? "",
                      ),
                      Divider(color: AppColors.darkPrimaryColour, height: 30),
                      SizedBox(height: 30),
                      ProfileDriwerItem(
                        title: "${AppStrings.strRegion}:",
                        subTitle: state.response?.region,
                      ),
                    ],
                  ),
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
        ).paddingAll(20);
      }),
    );
  }

  Future<void> logout(BuildContext context) async {
    await inject<AuthCubit>().logout();

    /// Navigate to Sign in Screen
    Navigator.of(context).pushNamedAndRemoveUntil(
        RouteName.login.route, (Route<dynamic> route) => false);
  }
}
