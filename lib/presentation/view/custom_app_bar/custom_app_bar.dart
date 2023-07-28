import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/widget/custom_text_field.dart';
import 'package:uni_hostel_admin/core/widget/error_img_profile.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: AppColors.bodyTextColor,
              blurRadius: 0.5,
              offset: Offset(0.0, 0.10))
        ],
      ),
      child: Row(
        children: [
          !ResponsiveWidget.isTablet(context)
              ? SizedBox.shrink()
              : Builder(
                  builder: (context) => GestureDetector(
                    child: Icon(Icons.menu,
                        color: AppColors.primaryColor, size: 30),
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ).paddingOnly(top: 8,left:ResponsiveWidget.isMobileLarge(context)? 6: 16),
                ),
          SizedBox(width: 10),
          Expanded(
              child: CustomTextField(
            borderColor: AppColors.transparent,
            hintText: "${AppStrings.strSearch}...",
            prefixIcon: Icon(CupertinoIcons.search,size: 22),
            preIconColor: AppColors.bodyTextColor,
          ).paddingOnly(top: 8)),
          NetworkImageWidget(
            onTap: () => Scaffold.of(context).openEndDrawer(),
            size: 50,
            img: "",
          ).paddingSymmetric(horizontal: 12),
          ResponsiveWidget.isTablet(context)
              ? const SizedBox.shrink()
              : Container(
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Asadbek Abdumajidov Ulugbek o'gli",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontWeight: FontWeight.w500,
                              )),
                      Text("Admin Toshkent shahri",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  color: AppColors.bodyTextColor,
                                  fontWeight: FontWeight.w400)),
                    ],
                  ),
              ),
        ],
      ).paddingAll(10),
    );
  }
}
