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
import 'package:uni_hostel_admin/presentation/cubit/profile/profile_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/side_bar/side_bar_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/widget/side_menu_item.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SideBarCubit, SideBarState>(builder: (context, state) {
      var status = context.watch<ProfileCubit>().state.response?.type;
      var index;
      if (status == "payment_admin" && state.currentIndex == 0) {
        index = 5;
        context.read<SideBarCubit>().changeIndex(index);
        Future.delayed(Duration(milliseconds: 300), () {
          Navigator.pushNamed(context, RouteName.thoseWhoPaid.route);
        });
      }

      debugPrint("$status STATUS");
      return Container(
        height: context.h,
        width: 270,
        color: AppColors.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.iconWhiteLogo, height: 53, width: 53),
            SizedBox(height: 50),
            (status == "faculty_admin" ||
                    status == "order_admin" ||
                    status == "admin")
                ? SideMenuItem(
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
                    })
                : SizedBox.shrink(),
            (status == "faculty_admin" ||
                    status == "order_admin" ||
                    status == "admin")
                ? SideMenuItem(
                    index: 1,
                    title: AppStrings.strApproved,
                    currentIndex: state.currentIndex,
                    icon: AppIcons.iconApproved,
                    onTap: () {
                      if (state.currentIndex != 1) {
                        context.read<SideBarCubit>().changeIndex(1);
                        Navigator.pop(context);
                        Navigator.pushNamed(context, RouteName.students.route);
                      }
                    })
                : SizedBox.shrink(),
            (status == "faculty_admin" ||
                    status == "order_admin" ||
                    status == "admin")
                ? SideMenuItem(
                    index: 2,
                    title: AppStrings.strWaiting,
                    currentIndex: state.currentIndex,
                    onTap: () {
                      if (state.currentIndex != 2) {
                        context.read<SideBarCubit>().changeIndex(2);
                        Navigator.pop(context);
                        Navigator.pushNamed(context, RouteName.waiting.route);
                      }
                    })
                : SizedBox.shrink(),
            (status == "faculty_admin" ||
                    status == "order_admin" ||
                    status == "admin")
                ? SideMenuItem(
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
                  )
                : SizedBox.shrink(),
            (status == "faculty_admin" || status == "admin")
                ? SideMenuItem(
                    index: 4,
                    title: AppStrings.strInDormitory,
                    currentIndex: state.currentIndex,
                    icon: AppIcons.iconStudent,
                    onTap: () {
                      if (state.currentIndex != 4) {
                        context.read<SideBarCubit>().changeIndex(4);
                        Navigator.pop(context);
                        Navigator.pushNamed(
                            context, RouteName.inDormitory.route);
                      }
                    },
                  )
                : SizedBox.shrink(),
            (status == "payment_admin" || status == "admin")
                ? SideMenuItem(
                    index: 5,
                    title: AppStrings.strThoseWhoPaid,
                    currentIndex: state.currentIndex,
                    icon: AppIcons.iconPaymentMonitoring,
                    onTap: () {
                      if (state.currentIndex != 5) {
                        context.read<SideBarCubit>().changeIndex(5);
                        Navigator.pop(context);
                        Navigator.pushNamed(
                            context, RouteName.thoseWhoPaid.route);
                      }
                    },
                  )
                : SizedBox.shrink(),
            (status == "admin")
                ? SideMenuItem(
                    index: 6,
                    title: AppStrings.strAdmins,
                    currentIndex: state.currentIndex,
                    icon: AppIcons.iconAdmin,
                    onTap: () {
                      if (state.currentIndex != 6) {
                        context.read<SideBarCubit>().changeIndex(6);
                        Navigator.pop(context);
                        Navigator.pushNamed(context, RouteName.isAdmin.route);
                      }
                    },
                  )
                : SizedBox.shrink(),
            SideMenuItem(
              index: 7,
              title: AppStrings.strStatistics,
              currentIndex: state.currentIndex,
              icon: AppIcons.iconStatistics,
              onTap: () {
                if (state.currentIndex != 7) {
                  context.read<SideBarCubit>().changeIndex(7);
                  Navigator.pop(context);
                  Navigator.pushNamed(context, RouteName.statistics.route);
                }
              },
            ),
          ],
        ).paddingSymmetric(vertical: 20, horizontal: 16),
      );
    });
  }
}
