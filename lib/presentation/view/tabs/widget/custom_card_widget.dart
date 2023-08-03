import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_icons.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/general_functions.dart';
import 'package:uni_hostel_admin/core/widget/status_widget.dart';
import 'package:uni_hostel_admin/data/models/order/get_order/get_order_response.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/card_item_widget.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget(
      {super.key, this.textStatus, this.statusColor, required this.list});
  final String? textStatus;
  final Color? statusColor;
  final List<OrderModel>? list;
  @override
  Widget build(BuildContext context) {
    return list!.isEmpty
        ? Center(
          child: StepStatusWidget(
              img: AppIcons.iconBgRejected,
              title: AppStrings.strApplicationEmpty,
            ),
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
                    isIcon: false,
                  ),
                  Divider()
                ],
              ).paddingOnly(bottom: 4),
              ListView.separated(
                itemCount: list?.length ?? 0,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int __) => Divider(),
                itemBuilder: (_, __) {
                  var response = list?[__].student;
                  return CardItemWidget(
                    isIcon: false,
                    userName: response?.name ?? "-",
                    img: response?.image ?? "-",
                    statusColor: statusColor,
                    textStatus: textStatus,
                    date: localDateFormat(list?[__].createdAt),
                    time: localTimeFormat(list?[__].createdAt),
                  );
                },
              ),
            ],
          );
  }
}
