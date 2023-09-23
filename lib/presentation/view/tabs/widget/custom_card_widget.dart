import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_icons.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/general_functions.dart';
import 'package:uni_hostel_admin/core/widget/status_widget.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/expansion_item.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/card_item_widget.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget(
      {super.key,
      this.textStatus,
      this.statusColor,
      required this.list,
      required this.notButtonIndex});
  final String? textStatus;
  final Color? statusColor;
  final int notButtonIndex;
  final List<OrderModel>? list;
  @override
  Widget build(BuildContext context) {
    return list!.isEmpty
        ? StepStatusWidget(
            img: AppIcons.iconBgRejected,
            title: AppStrings.strApplicationEmpty,
          )
        : Column(
            children: [
              Column(
                children: [
                  CardItemWidget(
                    userName: AppStrings.strSN,
                    status: AppStrings.strStatus,
                    date: AppStrings.strDate,
                    time: AppStrings.strTime,
                    isIcon: true,
                  ),
                  Divider()
                ],
              ).paddingOnly(bottom: 4),
              ListView.separated(
                physics: BouncingScrollPhysics(),
                itemCount: list?.length ?? 0,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int __) => Divider(),
                itemBuilder: (_, __) {
                  var response = list?[__].student;
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(3),
                        bottomRight: Radius.circular(3),
                      ),
                    ),
                    child: Theme(
                      data: ThemeData()
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        tilePadding: EdgeInsets.only(right: 12),
                        title: CardItemWidget(
                          isIcon: false,
                          imageBakgColour:  AppColors.whiteColor,
                          userName: response?.name ?? "-",
                          img: response?.image ?? "-",
                          statusColor: statusColor,
                          textStatus: textStatus,
                          date: localDateFormat(list?[__].createdAt),
                          time: localTimeFormat(list?[__].createdAt),
                        ).paddingAll(4),
                        children: [
                          ExpansionItemWidget(
                            id: list?[__].id ?? 0,
                            index: notButtonIndex,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          );
  }
}
