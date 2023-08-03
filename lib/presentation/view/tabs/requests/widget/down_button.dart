import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class DownButtonWidget extends StatelessWidget {
  const DownButtonWidget(
      {super.key,
      required this.onTapRejected,
      required this.onTapWaiting,
      required this.onTapApproved});
  final Function() onTapRejected;
  final Function() onTapWaiting;
  final Function() onTapApproved;

  @override
  Widget build(BuildContext context) {
    double buttonsize = ResponsiveWidget.isMobile(context) ? 95 : 110;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomOutlineButton(
          width: buttonsize,
          text: AppStrings.strRejectedAd,
          onTap: onTapRejected,
        ),
        CustomOutlineButton(
          width: buttonsize,
          text: AppStrings.strWaitingAd,
          onTap: onTapWaiting,
        ).paddingSymmetric(horizontal: 20),
        CustomOutlineButton(
          width: buttonsize,
          text: AppStrings.strApprovedAd,
          onTap: onTapApproved,
        ),
      ],
    ).paddingSymmetric(horizontal: ResponsiveWidget.isMobile(context) ? 0 : 20);
  }
}
