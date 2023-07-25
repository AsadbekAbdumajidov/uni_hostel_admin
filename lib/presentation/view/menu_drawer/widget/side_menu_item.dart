import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem(
      {super.key,
      this.onTap,
      required this.currentIndex,
      required this.index,
      required this.title,
      this.icon});
  final Function()? onTap;
  final int currentIndex;
  final int index;
  final String title;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: index == currentIndex
          ? Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.darkPrimaryColour),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  icon == null
                      ? Container(
                          child: LoadingWidget(color: AppColors.whiteColor))
                      : SvgPicture.asset(icon ?? ""),
                  SizedBox(width: 10),
                  Text(title,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: AppColors.whiteColor)),
                ],
              ).paddingAll(10),
            )
          : Row(
              children: [
                icon == null
                    ? Container(
                        child: LoadingWidget(color: AppColors.whiteColor))
                    : SvgPicture.asset(icon ?? ""),
                SizedBox(width: 10),
                Text(title,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: AppColors.whiteColor)),
              ],
            ).paddingOnly(left: 10),
    ).paddingOnly(bottom: 20);
  }
}
