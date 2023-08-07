import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class DownButtonWidget extends StatelessWidget {
  const DownButtonWidget(
      {super.key, this.onTapRejected, this.onTapWaiting, this.onTapApproved});
  final Function()? onTapRejected;
  final Function()? onTapWaiting;
  final Function()? onTapApproved;

  @override
  Widget build(BuildContext context) {
    double buttonsize = ResponsiveWidget.isMobile(context) ? 95 : 110;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        onTapRejected == null
            ? SizedBox.shrink()
            : CustomOutlineButton(
                width: buttonsize,
                primaryColour: AppColors.redColour,
                text: AppStrings.strRejectedAd,
                onTap: onTapRejected ?? () {},
              ).paddingOnly(right: 20),
        onTapWaiting == null
            ? SizedBox.shrink()
            : CustomOutlineButton(
                primaryColour: AppColors.amberColor,
                width: buttonsize,
                text: AppStrings.strWaitingAd,
                onTap: onTapWaiting ?? () {},
              ).paddingOnly(right: 20),
        onTapApproved == null
            ? SizedBox.shrink()
            : CustomOutlineButton(
                width: buttonsize,
                primaryColour: AppColors.greenColour,
                text: AppStrings.strApprovedAd,
                onTap: onTapApproved ?? () {},
              ),
      ],
    ).paddingSymmetric(horizontal: ResponsiveWidget.isMobile(context) ? 0 : 20);
  }
}
