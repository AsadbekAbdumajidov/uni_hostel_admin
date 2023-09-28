import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/profile/profile_cubit.dart';

import '../../../../components/drobdown_widget.dart';

class TopRequestItemWidget extends StatelessWidget {
  const TopRequestItemWidget({
    super.key,
    this.index,
    required this.title,
    required this.list,
    required this.onChanged,
    this.facultyIndex,
    required this.faculties,
    required this.onChangeFaculty,
    this.coursIndex,
    required this.courses,
    required this.onChangecourse,
    required this.onTapFilter,
    this.count,
  });
  final String? index;
  final String title;

  final String? facultyIndex;
  final List<String> faculties;
  final String? coursIndex;
  final int? count;

  final List<String> courses;
  final Function(dynamic v) onChangecourse;
  final Function(dynamic v) onChangeFaculty;
  final List<String> list;
  final Function(dynamic v) onChanged;
  final Function() onTapFilter;

  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 22 : 24;
     var status = context.watch<ProfileCubit>().state.response?.type;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "$title ",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontSize: textSize),
            ),
            Text(
              count  == 0 ? "" : count.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ).paddingOnly(top: 4),
          ],
        ),
        ResponsiveWidget.isMobileLarge(context)
            ? GestureDetector(
                onTap: onTapFilter,
                child: Icon(CupertinoIcons.text_alignright,
                    color: AppColors.primaryColor, size: 30),
              )
            : Row(
                children: [
                  DropDownWidget(
                    buttonWidth: 100,
                    drobDownWidth: 100,
                    index: coursIndex ?? "",
                    list: courses,
                    onChanged: onChangecourse,
                    isEmptyText: AppStrings.strCourse,
                  ),
                  status == "faculty_admin" ? SizedBox(width: 8): DropDownWidget(
                    buttonWidth: 150,
                    drobDownWidth: 250,
                    index: facultyIndex ?? "",
                    list: faculties,
                    onChanged: onChangeFaculty,
                    isEmptyText: AppStrings.strFaculty,
                  ).paddingSymmetric(horizontal: 6),
                  DropDownWidget(
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
