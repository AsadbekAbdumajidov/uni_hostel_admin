import 'package:flutter/material.dart';
import 'package:flutter_web_buttons/flutter_web_buttons.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';

class UserInformationMobile extends StatelessWidget {
  const UserInformationMobile(
      {super.key, required this.title, required this.subTitle, this.onTap});
  final String title;
  final String subTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.bodyTextColor)),
        SizedBox(height: 6),
        onTap == null 
            ? Text(subTitle,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w600))
            : FlutterWebButton.textUnderline(
              lineSpacing: 4,
                AppStrings.strToSee,
                onPressed: onTap,
                animationDuration: const Duration(milliseconds: 500),
                textAnimatedColor: AppColors.primaryColor,
                flutterTextOptions: FlutterTextOptions(
                  fontSize: 14,
                  padding: EdgeInsets.all(0),
                  textColor: AppColors.primaryColor,
                ),
              ),
      ],
    ).paddingOnly(bottom: 18,top: 10);
  }
}
