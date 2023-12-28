import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/components/drobdown_widget.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class TopItemPaymentMonitoringWidget extends StatelessWidget {
  const TopItemPaymentMonitoringWidget(
      {super.key,
      this.title,
      this.count,
      required this.dormitoryIndex,
      required this.dormitoryList,
      required this.onchangedormitory,
      this.facultyIndex,
      required this.faculties,
      required this.onChanged,
      required this.list,
      this.index,
      required this.onChangeFaculty, required this.onTapFilter});
  final String? title;
  final int? count;
  final String dormitoryIndex;
  final List<String> dormitoryList;
  final Function(dynamic v) onchangedormitory;
  final String? facultyIndex;
  final List<String> faculties;
  final Function(dynamic v) onChanged;
  final Function(dynamic v) onChangeFaculty;
  final List<String> list;
  final String? index;
  final Function() onTapFilter;

  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 22 : 24;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text("$title ",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontSize: textSize)),
          Text(
            (count == 0 || count == null) ? "" : "$count",
            style: Theme.of(context).textTheme.titleLarge,
          ).paddingOnly(top: 4)
        ]),
        ResponsiveWidget.isMobileLarge(context)
            ? GestureDetector(
                onTap: onTapFilter,
                child: Icon(CupertinoIcons.text_alignright,
                    color: AppColors.primaryColor, size: 30),
              )
            : Row(
                children: [
                  DropDownWidget(
                    buttonWidth: 150,
                    drobDownWidth: 200,
                    index: dormitoryIndex,
                    list: dormitoryList,
                    onChanged: onchangedormitory,
                    isEmptyText: AppStrings.strBuilding,
                  ),
                  DropDownWidget(
                    buttonWidth: 150,
                    drobDownWidth: 250,
                    index: facultyIndex ?? "",
                    list: faculties,
                    onChanged: onChangeFaculty,
                    isEmptyText: AppStrings.strFaculty,
                  ).paddingSymmetric(horizontal: 6),
                  DropDownWidget(
                    buttonWidth: 150,
                    drobDownWidth: 250,
                    index: index ?? "",
                    list: list,
                    onChanged: onChanged,
                    isEmptyText: AppStrings.strMaritals,
                  ),
                ],
              )
      ],
    ).paddingOnly(bottom: 40);
  }
}
