import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/components/drobdown_widget.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class TopItemPaymentMonitoringWidget extends StatelessWidget {
  const TopItemPaymentMonitoringWidget({super.key, this.title, this.count, required this.dormitoryIndex, required this.dormitoryList, required this.onchangedormitory});
  final String? title;
  final int? count;
  final String dormitoryIndex;
  final List<String> dormitoryList;
  final Function(dynamic v) onchangedormitory;

  @override
  Widget build(BuildContext context) {
    
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 22 : 24;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [Text(
          "$title ",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontSize: textSize),
        ),
        Text(
          (count == 0 || count == null) ? "" : "$count",
          style: Theme.of(context).textTheme.titleLarge,
        ).paddingOnly(top: 4)]),

        DropDownWidget(
          buttonWidth: 150,
          drobDownWidth: 200,
          index: dormitoryIndex,
          list: dormitoryList,
          onChanged: onchangedormitory,
          isEmptyText: AppStrings.strBuilding,
        ),
      ],
    ).paddingOnly(bottom: 40);
  }
}
