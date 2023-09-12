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

class DifferentCardWidget extends StatelessWidget {
  const DifferentCardWidget({super.key, this.orderList});
  final List<OrderModel>? orderList;
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
                  CardItemWidget(
                    isIcon: true,
                    userName: AppStrings.strSN,
                    date: AppStrings.strDate,
                    time: AppStrings.strTime,
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
                          title: CardItemWidget(
                            textOverflow: TextOverflow.ellipsis,
                            userName: orderList?[__].student?.name ?? "-",
                            img: orderList?[__].student?.image ?? "",
                            date: localDateFormat(orderList?[__].createdAt),
                            time: localTimeFormat(orderList?[__].createdAt),
                            isIcon: false,
                          ).paddingAll(4),
                          children: [
                            ExpansionItemWidget(id: orderList?[__].id ?? 0)
                          ],
                        ),
                      ),
                    );
                  }),
             
            ],
          );
  }
}
