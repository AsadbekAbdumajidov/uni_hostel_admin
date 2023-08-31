import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class CardItemInDormitoryWidget extends StatelessWidget {
  const CardItemInDormitoryWidget(
      {super.key,
      required this.title1,
      required this.title2,
      required this.title3,
      this.statusColor,
      this.textOverflow,
      required this.isIcon,
      required this.title4});
  final String title1;
  final String title2;
  final String title3;
  final String title4;

  final Color? statusColor;
  final TextOverflow? textOverflow;
  final bool isIcon;
  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 16 : 18;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title1,
                  maxLines: textOverflow == null ? 2 : 1,
                  overflow: textOverflow,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontSize: textSize,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor),
                ).paddingOnly(left: 4),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        ResponsiveWidget.isMobile(context)
            ? SizedBox.shrink()
            : Expanded(
                flex: 3,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Text(
                      title2,
                      maxLines: textOverflow == null ? 2 : 1,
                      overflow: textOverflow,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontSize: textSize,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor),
                    ),
                  ),
                ]),
              ),
        SizedBox(width: 10),
        ResponsiveWidget.isMobile(context) || ResponsiveWidget.isTablet(context)
            ? SizedBox.shrink()
            : Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title3,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                fontSize: textSize,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor)),
                  ],
                ),
              ),
        ResponsiveWidget.isMobile(context) ||
                ResponsiveWidget.isMobileLarge(context)
            ? SizedBox.shrink()
            : Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title4,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                fontSize: textSize,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor)),
                  ],
                ),
              ),
        isIcon ? SizedBox(width: 50) : SizedBox.shrink()
      ],
    );
  }
}
