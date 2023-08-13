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
      required this.onChangecourse,
      this.facultyIndex,
      required this.faculties,
      required this.onChangeFaculty});
  final String title;
  final String? coursIndex;
  final List<String> courses;
  final String? facultyIndex;
  final List<String> faculties;
  final Function(dynamic v) onChangecourse;
  final Function(dynamic v) onChangeFaculty;

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
        Row(
          children: [
            DropDownWidget(
              buttonWidth: 150,
              drobDownWidth: 200,
              index: facultyIndex ?? "",
              list: faculties,
              onChanged: onChangeFaculty,
              isEmptyText: AppStrings.strFaculty,
            ).paddingSymmetric(horizontal: 6),
            DropDownWidget(
              buttonWidth: 100,
              drobDownWidth: 100,
              index: coursIndex ?? "",
              list: courses,
              onChanged: onChangecourse,
              isEmptyText: AppStrings.strCourse,
            ),
          ],
        )
      ],
    ).paddingOnly(bottom: 40);
  }
}
