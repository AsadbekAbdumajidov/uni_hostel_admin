import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';

class FacultyCardWidget extends StatelessWidget {
  const FacultyCardWidget(
      {super.key, required this.title, required this.subTitle, required this.animationDuration, this.width});
  final String title;
  final int subTitle;
  final int animationDuration;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: animationDuration),
      child: Container(
        width:width ?? 300,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 2,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: AppColors.whiteColor),
            ),
            SizedBox(height: 6),
            Text(
              "$subTitle ta",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.whiteColor),
            ),
          ],
        ).paddingAll(14),
      ),
    );
  }
}
