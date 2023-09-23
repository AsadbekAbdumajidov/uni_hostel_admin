import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_icons.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/widget/status_widget.dart';
import 'package:uni_hostel_admin/data/models/in_dormitory/in_dormitory_response.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/in_dormitory/widget/card_item_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/in_dormitory/widget/expansion_item.dart';

class InDormitoryCardWidget extends StatelessWidget {
  const InDormitoryCardWidget({super.key, this.orderList});
  final List<InDormitoryUser>? orderList;
  @override
  Widget build(BuildContext context) {
    return orderList!.isEmpty
        ? StepStatusWidget(
            img: AppIcons.iconBgRejected,
            title: AppStrings.strApplicationEmpty,
          )
        : Column(
            children: [
              Column(
                children: [
                  CardItemInDormitoryWidget(
                    isIcon: true,
                    title1: AppStrings.strSN,
                    title2: AppStrings.strFaculty,
                    title3:  AppStrings.strFloor,
                    title4:  AppStrings.strRoom,

                  ),
                  Divider()
                ],
              ).paddingOnly(bottom: 4),
              ListView.separated(
                padding: EdgeInsets.all(0),
                physics: BouncingScrollPhysics(),
                  itemCount: orderList?.length ?? 0,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: 4),
                  itemBuilder: (_, __) {
                    return Container(
                      decoration: BoxDecoration(
                        color: __.isEven
                            ? AppColors.backgroundColour
                            : AppColors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(7),
                          bottomRight: Radius.circular(7),
                        ),
                      ),
                      child: Theme(
                        data: ThemeData()
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          tilePadding: EdgeInsets.only(right: 12),
                          title: CardItemInDormitoryWidget(
                            maxLines: 2,
                            textOverflow: TextOverflow.ellipsis,
                            title1: "${orderList?[__].fullName}",
                            title2: orderList?[__].facultyModel ?? "-",
                            title3:"${orderList?[__].floor} - ${AppStrings.strFloor.toLowerCase()}",
                            title4:"${orderList?[__].room} - ${AppStrings.strRoom.toLowerCase()}",
                            isIcon: false,
                          ).paddingSymmetric(horizontal: 8,vertical: 12),
                          children: [
                            ExpansionItemInDormitoryWidget(response: orderList?[__])
                          ],
                        ),
                      ),
                    );
                  }),
             
            ],
          );
  }
}
