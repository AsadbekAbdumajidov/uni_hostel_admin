import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/presentation/cubit/in_dormitory_cubit/in_dormitory_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/on_hover/on_hover_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/checkbox_item_widget.dart';

class BottomIndormitoryFilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<InDormitoryCubit, InDormitoryState>(
        builder: (context, state) {
      var bloc = context.read<InDormitoryCubit>();
      return 
       FadeInUp(
        duration: Duration(milliseconds: 300),
          child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
            height: 500,
            width: 500,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(12)),
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
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return BlocProvider(
                            create: (context) => OnHoverCubit(),
                            child: BlocBuilder<OnHoverCubit, OnHoverState>(
                                builder: (context, hoverState) {
                              return InkWell(
                                onHover: (v) =>
                                    context.read<OnHoverCubit>().getHover(v),
                                onTap: () =>
                                    bloc.selectCourse(courseList[index]),
                                child: CheckboxItemRowWidget(
                                  hover: hoverState.hover,
                                  title: courseList[index],
                                  value: state.courseIndex == courseList[index],
                                ),
                              ).paddingOnly(bottom: 4);
                            }),
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
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        itemBuilder: (context, index) {
                          return BlocProvider(
                            create: (context) => OnHoverCubit(),
                            child: BlocBuilder<OnHoverCubit, OnHoverState>(
                                builder: (context, hoverState) {
                              return InkWell(
                                onHover: (v) =>
                                    context.read<OnHoverCubit>().getHover(v),
                                onTap: () {
                                  bloc.selectFaculty(
                                      state.facultiesList[index]);
                                },
                                child: CheckboxItemRowWidget(
                                  title: state.facultiesList[index],
                                  value: state.facultyIndex?.name ==
                                      state.facultiesList[index],
                                  hover: hoverState.hover,
                                ),
                              ).paddingOnly(bottom: 4);
                            }),
                          );
                        },
                        itemCount: state.facultiesList.length,
                      )
                    ],
                  ),
                   ExpansionTile(
                  tilePadding: EdgeInsets.all(0),
                  title: Text(
                    state.genderIndex == ""
                        ? AppStrings.strGender
                        : state.genderIndex,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  children: [
                    ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            bloc.selectGender(genders[index]);
                          },
                          child: CheckboxItemRowWidget(
                            title: genders[index],
                            value: state.genderIndex == genders[index],
                          ),
                        );
                      },
                      itemCount: genders.length,
                    )
                  ],
                ),
                  SizedBox(height: 50),
                ],
              ),
            )),
      ));

      // Container(
      //     height: 700,
      //     padding: EdgeInsets.all(16),
      //     decoration: BoxDecoration(
      //       color: AppColors.whiteColor,
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(12),
      //         topRight: Radius.circular(12),
      //       ),
      //     ),
      //     child:  ListView(
      //         children: [
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Text(AppStrings.strFilters,
      //                   style: Theme.of(context).textTheme.titleMedium),
      //               GestureDetector(
      //                 child: Icon(CupertinoIcons.xmark,
      //                     color: AppColors.bodyTextColor),
      //                 onTap: () => Navigator.pop(context),
      //               )
      //             ],
      //           ),
      //           SizedBox(height: 20),
      //           ExpansionTile(
      //             tilePadding: EdgeInsets.all(0),
      //             title: Text(
      //               state.courseIndex == ""
      //                   ? AppStrings.strCourse
      //                   : state.courseIndex,
      //               style: Theme.of(context).textTheme.displaySmall,
      //             ),
      //             children: [
      //               ListView.builder(
      //                 padding: EdgeInsets.symmetric(vertical: 10),
      //                 shrinkWrap: true,
      //                 itemBuilder: (context, index) {
      //                   return InkWell(
      //                     onTap: () {
      //                       bloc.selectCourse(courseList[index]);
      //                     },
      //                     child: CheckboxItemRowWidget(
      //                       title: courseList[index],
      //                       value: state.courseIndex == courseList[index],
      //                     ),
      //                   );
      //                 },
      //                 itemCount: courseList.length,
      //               )
      //             ],
      //           ),
                // ExpansionTile(
                //   tilePadding: EdgeInsets.all(0),
                //   title: Text(
                //     state.genderIndex == ""
                //         ? AppStrings.strGender
                //         : state.genderIndex,
                //     style: Theme.of(context).textTheme.displaySmall,
                //   ),
                //   children: [
                //     ListView.builder(
                //       padding: EdgeInsets.symmetric(vertical: 10),
                //       shrinkWrap: true,
                //       itemBuilder: (context, index) {
                //         return InkWell(
                //           onTap: () {
                //             bloc.selectGender(genders[index]);
                //           },
                //           child: CheckboxItemRowWidget(
                //             title: genders[index],
                //             value: state.genderIndex == genders[index],
                //           ),
                //         );
                //       },
                //       itemCount: genders.length,
                //     )
                //   ],
                // ),
      //           ExpansionTile(
      //             tilePadding: EdgeInsets.all(0),
      //             title: TextScroll(
      //               state.facultyIndex?.name ?? AppStrings.strFaculty,
      //               velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
      //               pauseBetween: Duration(milliseconds: 1000),
      //               mode: TextScrollMode.bouncing,
      //               style: Theme.of(context)
      //                   .textTheme
      //                   .displaySmall
      //                   ?.copyWith(color: AppColors.blackColor),
      //               textAlign: TextAlign.right,
      //               selectable: true,
      //             ),
      //             children: [
      //               ListView.builder(
      //                 shrinkWrap: true,
      //                 padding: EdgeInsets.symmetric(vertical: 10),
      //                 itemBuilder: (context, index) {
      //                   return InkWell(
      //                     onTap: () {
      //                       bloc.selectFaculty(state.facultiesList[index]);
      //                     },
      //                     child: CheckboxItemRowWidget(
      //                       title: state.facultiesList[index],
      //                       value: state.facultyIndex?.name ==
      //                           state.facultiesList[index],
      //                     ),
      //                   );
      //                 },
      //                 itemCount: state.facultiesList.length,
      //               )
      //             ],
      //           ),
      //           SizedBox(height: 50),
      //         ],
      //       ),
      //     );
    
    });
  }
}
