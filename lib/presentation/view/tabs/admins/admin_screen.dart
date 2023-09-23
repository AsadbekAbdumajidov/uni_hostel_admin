// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_decoration.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/admins/admins_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/admins/widget/add_admin_alert.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/admins/widget/admins_list.dart';

class AdminsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double paddingSize = ResponsiveWidget.isMobileLarge(context) ? 14 : 30;
    double responsiveSize = ResponsiveWidget.isMobile(context) ? 130 : 180;

    return BlocBuilder<AdminsCubit, AdminsState>(builder: (context, state) {
      return Scaffold(
        drawer: Drawer(child: MenuDrawer()),
        endDrawer: ProfileDrawer(),
        body: Row(children: [
          ResponsiveWidget.isTablet(context) ? SizedBox.shrink() : MenuDrawer(),
          Expanded(
            child: Column(children: [
              CustomAppBar(
                isSearch: false,
                text: AppStrings.strAdmins,
                widget:CustomOutlineButton(
                        width: responsiveSize,
                        icon: Icons.person_add,
                        text: AppStrings.strAddAdmin,
                        ounLineColour: AppColors.primaryColor,
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: AppColors.transparent,
                              builder: (context) {
                                return AddAdminAlertDialog()
                                    .paddingOnly(top: 80);
                              });
                        },
                      ).paddingOnly(right: paddingSize, top: 10),
              ),
              Expanded(
                child: Container(
                  height: 850,
                  width: context.w,
                  decoration: AppDecoration.customCardDecoration,
                  child: (state.status == Status.LOADING)
                      ? LoadingWidget(size: 40)
                      : AdminListWidget(adminList: state.adminList),
                ).paddingAll(ResponsiveWidget.isMobileLarge(context) ? 10 : 20),
              )
            ]),
          ),
        ]),
      );
    });
  }
}
