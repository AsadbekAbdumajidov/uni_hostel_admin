import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_decoration.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/payment_history_card.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/top_item_widget.dart';

class PaymentMonitoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String index = 'Fakulte';
    List<String> list = ['Fakultet', 'Fakulte', 'Fakultet2', 'Fakultet3'];
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
                  CustomAppBar(textEditingController: TextEditingController(),),
                  Expanded(
                    child: Container(
                      width: context.w,
                      padding: EdgeInsets.all(20),
                      decoration: AppDecoration.customCardDecoration,
                      child: ListView(
                        physics: ClampingScrollPhysics(),
                        children: [
                          TopItemPaymentMonitorWidget(
                            index: index,
                            title: AppStrings.strPaymentHistory,
                            list: list,
                            onChanged: (v) {},
                          ),
                          PaymentHistoryCardWidget(
                              userName: "Asadbek Abdumajidov",
                              date: "06.07.2023",
                              quantity: "134 000 so’m",
                              cardNumber: "9860 **** **** 7404",
                              checkNumber: "7772",
                             )
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
