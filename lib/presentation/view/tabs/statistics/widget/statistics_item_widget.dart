import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/presentation/components/bar_chart.dart';
import 'package:uni_hostel_admin/presentation/components/round_chart.dart';

class StatisTicsView extends StatelessWidget {
  const StatisTicsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 400,
          padding: EdgeInsets.all(16),
          width: context.w,
          decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(7)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Talabalar (Arizalar bo'yicha)",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontSize: 20)),
              SizedBox(height: 10),
              Expanded(
                child: Row(
                  children: [
                    RoundChartWidget(),
                    Container(
                        color: AppColors.primaryColor.withOpacity(0.4),
                        height: context.h,
                        width: 1)
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        Container(
          height: 400,
          padding: EdgeInsets.all(16),
          width: context.w,
          decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(7)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Talabalar (hududlar bo'yicha)",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontSize: 20)),
              SizedBox(height: 10),
              BarChartSample2(),
            ],
          ),
        )
      ],
    ).paddingSymmetric(horizontal: 20);
  }
}
