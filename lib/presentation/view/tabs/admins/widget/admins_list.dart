import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_icons.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/widget/status_widget.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/admins/widget/admins_card_item.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/card_item_widget.dart';

class AdminListWidget extends StatelessWidget {
  const AdminListWidget({super.key, required this.adminList});
  final List<ProfileResponse?> adminList;
  @override
  Widget build(BuildContext context) {
    double paddingSize = ResponsiveWidget.isMobileLarge(context) ? 16 : 24;
    return  Container(
        height: 850,
        width: context.w,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              adminList.isEmpty
                  ? StepStatusWidget(
                      img: AppIcons.iconBgRejected,
                      title: AppStrings.strApplicationEmpty,
                    )
                  : Column(
                      children: [
                        Column(
                          children: [
                            CardItemWidget(
                              isIcon: true,
                              userName: AppStrings.strSN,
                              date: AppStrings.strUser,
                              time: AppStrings.strType,
                            ),
                            Divider()
                          ],
                        ).paddingOnly(bottom: 4),
                        ListView.separated(
                            padding: EdgeInsets.all(0),
                            physics: BouncingScrollPhysics(),
                            itemCount: adminList.length,
                            shrinkWrap: true,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    SizedBox(height: 4),
                            itemBuilder: (_, __) {
                              var user = adminList[__];
                              return AdminsCardItem(
                                  user: user, isEven: __.isEven);
                            }),
                      ],
                    ),
            ],
          ),
        ),
      ).paddingAll(paddingSize
    );
  }
}
