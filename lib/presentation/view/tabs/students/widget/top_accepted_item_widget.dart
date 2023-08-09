import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/components/drobdown_widget.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class TopAcceptedItemWidget extends StatelessWidget {
  const TopAcceptedItemWidget(
      {super.key,
      required this.title,
      this.coursIndex,
      required this.courses,
      required this.onChangecourse});
  final String title;
  final String? coursIndex;
  final List<String> courses;
  final Function(dynamic v) onChangecourse;
  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 22 : 24;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontSize: textSize),
        ),
        DropDownWidget(
          buttonWidth: 100,
          drobDownWidth: 100,
          index: coursIndex ?? "",
          list: courses,
          onChanged: onChangecourse,
          isEmptyText: AppStrings.strCourse,
        ),
      ],
    ).paddingOnly(bottom: 40);
  }
}
