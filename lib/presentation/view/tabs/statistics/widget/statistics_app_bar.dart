import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class StatisticsAppBar extends StatelessWidget {
  const StatisticsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 10.0,
        sigmaY: 10.0,
      ),
      child: Container(
        width: context.w,
        padding: EdgeInsets.only(top: 10),
        color: AppColors.primaryColor.withOpacity(.9),
        child: 
            Row(
              children: [
                !ResponsiveWidget.isTablet(context)
                    ? SizedBox.shrink()
                    : Builder(
                        builder: (context) => GestureDetector(
                          child: Icon(Icons.menu,
                              color: AppColors.whiteColor, size: 30),
                          onTap: () => Scaffold.of(context).openDrawer(),
                        ).paddingOnly(top: 8, left: 6),
                      ),
                SizedBox(width: 10),
                Text(
                    "TOSHKENT TIBBIYOT AKADEMIYASI TALABALAR \nTURAR JOYI STATISTIKASI",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.whiteColor,
                        fontSize:
                            ResponsiveWidget.isMobile(context) ? 12 : 16)),
              ],
           
        ).paddingAll(12),
      ),
    ));
  }
}
