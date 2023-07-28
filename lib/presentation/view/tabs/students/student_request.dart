import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_decoration.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/students/widget/top_item_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/custom_card_widget.dart';

import '../../../../core/themes/app_text.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({super.key});

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  String index = 'Fakulte';
  List<String> list = ['Fakultet', 'Fakulte', 'Fakultet2', 'Fakultet3'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(child: MenuDrawer()),
        endDrawer: ProfileDrawer(),
        body: Row(
          children: [
            ResponsiveWidget.isTablet(context)
                ? SizedBox.shrink()
                : MenuDrawer(),
            Expanded(
              child: Column(
                children: [
                  CustomAppBar(),
                  Expanded(
                    child: Container(
                      width: context.w,
                      padding: EdgeInsets.all(20),
                      decoration: AppDecoration.customCardDecoration,
                      child: ListView(
                        physics: ClampingScrollPhysics(),
                        children: [
                          TopItemWidget(
                            index: index,
                            title: AppStrings.strApproveds,
                            list: list,
                            onChanged: (v) {},
                          ),
                          CustomCardWidget(
                            statusColor: AppColors.greenColour,
                            textStatus: AppStrings.strApproved,
                          ),
                        ],
                      ),
                    ).paddingAll(
                        ResponsiveWidget.isMobileLarge(context) ? 16 : 30),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
