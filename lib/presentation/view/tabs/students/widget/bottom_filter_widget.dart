import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/cubit/accepted_order/accepted_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/checkbox_item_widget.dart';

class BottomFilterAccWidget extends StatelessWidget {
  const BottomFilterAccWidget({
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
    return BlocBuilder<AcceptedOrderCubit, AcceptedOrderState>(
        builder: (context, state) {
      var bloc = context.read<AcceptedOrderCubit>();
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
                    coursIndex ?? AppStrings.strCourse,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  children: [
                    ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            bloc.selectCourse(courses[index]);
                            Navigator.pop(context);
                          },
                          child: CheckboxItemRowWidget(
                            title: courses[index],
                            value: coursIndex == courses[index],
                          ),
                        );
                      },
                      itemCount: courses.length,
                    )
                  ],
                ),
                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: TextScroll(
                    facultyIndex ?? AppStrings.strFaculty,
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
                            bloc.selectFaculty(faculties[index]);
                            Navigator.pop(context);
                          },
                          child: CheckboxItemRowWidget(
                            title: faculties[index],
                            value: facultyIndex == faculties[index],
                          ),
                        );
                      },
                      itemCount: faculties.length,
                    )
                  ],
                ),
                ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: TextScroll(
                    indexM ?? AppStrings.strMaritals,
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
                        debugPrint("BBBBB$indexM");
                        debugPrint("HHHHHH${list[index]}");

                        return InkWell(
                          onTap: () {
                            bloc.selectMaritals(list[index]);
                            Navigator.pop(context);
                          },
                          child: CheckboxItemRowWidget(
                            title: list[index],
                            value: indexM == list[index],
                          ),
                        );
                      },
                      itemCount: list.length,
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
