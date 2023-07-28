import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/card_item_widget.dart';

class DifferentCardWidget extends StatelessWidget {
  const DifferentCardWidget({
    super.key,
    this.date,
    this.time,
    this.title,
    this.img,
  });
  final String? title;
  final String? img;
  final String? date;
  final String? time;
  @override
  Widget build(BuildContext context) {
    return Column(
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
            itemCount: 14,
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
                    topRight: Radius.circular(3),
                    bottomRight: Radius.circular(3),
                  ),
                ),
                child: Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.only(right: 12),
                    title: CardItemWidget(
                      textOverflow: TextOverflow.ellipsis,
                      userName: title ?? "-",
                      img: img,
                      date: date ?? "-",
                      time: time ?? "-",
                      isIcon: false,
                    ).paddingAll(4),
                    children: [
                      Column(
                        children: [],
                      )
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}
