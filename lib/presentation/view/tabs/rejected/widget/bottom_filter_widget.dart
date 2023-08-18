import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/presentation/cubit/cancelled_order/cancelled_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/checkbox_item_widget.dart';

class BottomFilterCancelledWidget extends StatelessWidget {
  const BottomFilterCancelledWidget({
    super.key,
    this.indexM,
    this.facultyIndex,
    required this.faculties,
    this.coursIndex,
    required this.courses,
    required this.list,
  });
  final String? indexM;
  final String? facultyIndex;
  final List<String> faculties;
  final String? coursIndex;
  final List<String> courses;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CancelledOrderCubit, CancelledOrderState>(
        builder: (context, state) {
      var bloc = context.read<CancelledOrderCubit>();
      return Container(
          height: 600,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppStrings.strFilters,
                        style: Theme.of(context).textTheme.titleMedium),
                    GestureDetector(
                      child: Icon(CupertinoIcons.xmark,
                          color: AppColors.bodyTextColor),
                      onTap: () => Navigator.pop(context),
                    )
                  ],
                ),
                SizedBox(height: 20),
                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: Text(
                    state.courseIndex == ""
                        ? AppStrings.strCourse
                        : state.courseIndex,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  children: [
                    ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            bloc.selectCourse(courseList[index]);
                          },
                          child: CheckboxItemRowWidget(
                            title: courseList[index],
                            value: state.courseIndex == courseList[index],
                          ),
                        );
                      },
                      itemCount: courseList.length,
                    )
                  ],
                ),
                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: TextScroll(
                    state.facultyIndex?.name ?? AppStrings.strFaculty,
                    velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                    pauseBetween: Duration(milliseconds: 1000),
                    mode: TextScrollMode.bouncing,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: AppColors.blackColor),
                    textAlign: TextAlign.right,
                    selectable: true,
                  ),
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            bloc.selectFaculty(state.facultiesList[index]);
                          },
                          child: CheckboxItemRowWidget(
                            title: state.facultiesList[index],
                            value: state.facultyIndex?.name ==
                                state.facultiesList[index],
                          ),
                        );
                      },
                      itemCount: state.facultiesList.length,
                    )
                  ],
                ),
                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: TextScroll(
                    state.maritalStatus == ""
                        ? AppStrings.strMaritals
                        : state.maritalStatus,
                    velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                    pauseBetween: Duration(milliseconds: 1000),
                    mode: TextScrollMode.bouncing,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: AppColors.blackColor),
                    textAlign: TextAlign.right,
                    selectable: true,
                  ),
                  children: [
                    ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            bloc.selectMaritals(maritals[index]);
                          },
                          child: CheckboxItemRowWidget(
                            title: maritals[index],
                            value: state.maritalStatus == maritals[index],
                          ),
                        );
                      },
                      itemCount: maritals.length,
                    )
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          ));
    });
  }
}
