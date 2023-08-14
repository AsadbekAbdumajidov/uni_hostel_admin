import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class CheckDeleteAlertDialog extends StatelessWidget {
  const CheckDeleteAlertDialog(
      {super.key, required this.title, required this.onTapright});

  final String title;
  final Function() onTapright;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          height: ResponsiveWidget.isMobile(context) ? 220 : 300,
          width: 400,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(CupertinoIcons.xmark),
                  )
                ],
              ),
              SizedBox(height: 23),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Divider(color: AppColors.bodyTextColor.withOpacity(0.2)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomOutlineButton(
                    width: 137,
                    text: AppStrings.strIsCancelled,
                    onTap: () => Navigator.pop(context),
                  ),
                  CustomOutlineButton(
                    text: AppStrings.stirApproved,
                    width: 137,
                    onTap: onTapright,
                  )
                ],
              ).paddingOnly(top: 14)
            ],
          ).paddingAll(ResponsiveWidget.isMobile(context) ? 16 : 30),
        ),
      ),
    );
  }
}
