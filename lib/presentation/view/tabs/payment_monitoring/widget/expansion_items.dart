import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class ExpansionPaymentsItem extends StatelessWidget {
  const ExpansionPaymentsItem({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  });
  final String title1;
  final String title2;
  final String title3;
  final String title4;


  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 14 : 16;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title1,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: textSize,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor),
              ),
            ],
          ),
        ),
        Expanded(
          flex:ResponsiveWidget.isMobile(context) ? 3 : 2,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              title2,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: textSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor),
            ),
          ]),
        ),
        Expanded(
          flex:ResponsiveWidget.isMobile(context) ? 2 : 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (title3 == "To'langan" )
                  ? ResponsiveWidget.isMobile(context)
                      ? Icon(CupertinoIcons.check_mark_circled,
                          color: AppColors.greenColour)
                      : StatusContainer(
                          title: title3, color: AppColors.greenColour)
                  : title3 == "Holat"
                      ? Text(title3,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                  fontSize: textSize,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor))
                      : ResponsiveWidget.isMobile(context)
                          ? Icon(CupertinoIcons.xmark_circle,
                              color: AppColors.redColour)
                          : StatusContainer(
                              title: title3, color: AppColors.redColour)
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title4,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontSize: textSize,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor)),
            ],
          ),
        ),
      ],
    );
  }
}

class StatusContainer extends StatelessWidget {
  const StatusContainer({super.key, required this.title, required this.color});
  final String title;

  final Color color;
  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 14 : 16;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: color, width: 0.3),
          color: color.withOpacity(0.1)),
      child: Center(
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontSize: textSize,
                fontWeight: FontWeight.w300,
                color: color,
              ),
        ),
      ).paddingSymmetric(vertical: 4, horizontal: 10),
    );
  }
}
