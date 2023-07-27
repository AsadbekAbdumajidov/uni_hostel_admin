import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/card_item_widget.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget(
      {super.key, this.textStatus,  this.statusColor});
  final String? textStatus;
  final Color? statusColor;

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            CardItemWidget(
              userName: AppStrings.strSN,
              status: AppStrings.strStatus,
              date: AppStrings.strDate,
              time: AppStrings.strTime,
            ),
            Divider()
          ],
        ),
        ListView.separated(
            itemCount: 14,
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemBuilder: (_, __) {
              return CardItemWidget(
                userName: "Asadbek Abdumajidov Ulugbek o'gli",
                img: "",
                statusColor: statusColor,
                textStatus: textStatus,
                date: "06.07.2023",
                time: "16:48",
              );
            }),
      ],
    );
  }
}
