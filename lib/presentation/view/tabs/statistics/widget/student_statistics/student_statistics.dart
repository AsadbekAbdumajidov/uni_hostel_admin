import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/constants/constants.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/data/models/statistics/student_statistics/student_statistics_response.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/main_statistics/widget/fakulty_card_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/student_statistics/widget/bar_chart_regions.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/student_statistics/widget/bar_chart_student.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/student_statistics/widget/round_chart_student.dart';

class StudentStatistics extends StatelessWidget {
  const StudentStatistics({super.key, this.response});
  final StudentStatisticsResponse? response;
  @override
  Widget build(BuildContext context) {
    double responsivePadding = ResponsiveWidget.isMobile(context) ? 0 : 16;
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 10),
      children: [
        Container(
          height: 400,
          width: context.w,
          padding:
              EdgeInsets.symmetric(vertical: 14, horizontal: responsivePadding),
          decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(7)),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Talabalar (Hududlar bo'yicha)",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontSize: 20))
                      .paddingOnly(left: 10, bottom: 16),
                  SizedBox(height: 10),
                  BarChartSample2Regions(response: response),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 12),
        Container(
          height: 400,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(7)),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Expanded(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Talabalar bo'yicha ${response?.all} ta",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontSize: 20)),
                      RoundChartStudentWidget(response: response),
                    ],
                  ),
                  Container(
                      color: AppColors.primaryColor.withOpacity(0.4),
                      height: context.h,
                      width: 1),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Talabalar (Fakultetlar bo'yicha)",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontSize: 20)),
                      SizedBox(height: 16),
                      Expanded(
                        child: Container(
                          width: desktopSize.toDouble(),
                          child: GridView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 300,
                                mainAxisExtent: 90,
                                childAspectRatio: 3,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              itemCount: response?.faculty?.length,
                              itemBuilder: (BuildContext ctx, index) {
                                var res = response?.faculty?[index];
                                return FacultyCardWidget(
                                  width: 300,
                                  animationDuration: (600 + (index * 150)),
                                  title: res?.name ?? "",
                                  subTitle: res?.count ?? 0,
                                );
                              }),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 12),
        Container(
          height: 400,
          width: context.w,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(7)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Talabalar (Kurslar bo'yicha)",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontSize: 20)),
              SizedBox(height: 10),
              BarChartSample2Student(response: response),
            ],
          ),
        )
      ],
    ).paddingSymmetric(horizontal: 20);
  }
}
