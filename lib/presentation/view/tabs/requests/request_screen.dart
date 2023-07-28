import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_decoration.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/differenet_card_widget.dart';

class RequestsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
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
                          Row(
                            children: [
                              Text(AppStrings.strRequests,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium
                                      ?.copyWith(
                                          fontSize:
                                              ResponsiveWidget.isMobileLarge(
                                                      context)
                                                  ? 22
                                                  : 24)),
                            ],
                          ).paddingOnly(bottom: 40),
                          DifferentCardWidget(
                            title: "Asadbek Abdumajidov Ulugbek o'gli",
                            img: "",
                            date: "06.07.2023",
                            time: "16:48",
                          ),
                        ],
                      ),
                    ).paddingAll(
                        ResponsiveWidget.isMobileLarge(context) ? 16 : 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
