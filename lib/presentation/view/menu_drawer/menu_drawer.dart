import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:get/utils.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/routes/app_routes.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_icons.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/cubit/side_bar/side_bar_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/widget/side_menu_item.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SideBarCubit, SideBarState>(builder: (context, state) {
      return Container(
        height: context.h,
        width: 270,
        color: AppColors.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.iconWhiteLogo, height: 53, width: 53),
            SizedBox(height: 50),
            SideMenuItem(
                index: 0,
                title: AppStrings.strRequests,
                currentIndex: state.currentIndex,
                icon: AppIcons.iconRequest,
                onTap: () {
                  if (state.currentIndex != 0) {
                    context.read<SideBarCubit>().changeIndex(0);
                    Navigator.pop(context);
                    Navigator.pushNamed(context, RouteName.requests.route);
                  }
                }),
            SideMenuItem(
                index: 1,
                title: AppStrings.strStudents,
                currentIndex: state.currentIndex,
                icon: AppIcons.iconStudent,
                onTap: () {
                  if (state.currentIndex != 1) {
                    context.read<SideBarCubit>().changeIndex(1);
                    Navigator.pop(context);
                    Navigator.pushNamed(context, RouteName.students.route);
                  }
                }),
            SideMenuItem(
                index: 2,
                title: AppStrings.strWaiting,
                currentIndex: state.currentIndex,
                onTap: () {
                  if (state.currentIndex != 2) {
                    context.read<SideBarCubit>().changeIndex(2);
                    Navigator.pop(context);
                    Navigator.pushNamed(context, RouteName.waiting.route);
                  }
                }),
            SideMenuItem(
              index: 3,
              title: AppStrings.strRejected,
              currentIndex: state.currentIndex,
              icon: AppIcons.iconRejected,
              onTap: () {
                if (state.currentIndex != 3) {
                  context.read<SideBarCubit>().changeIndex(3);
                  Navigator.pop(context);
                  Navigator.pushNamed(context, RouteName.rejected.route);
                }
              },
            ),
          ],
        ).paddingSymmetric(vertical: 20,horizontal: 16),
      );
    });
  }
}
