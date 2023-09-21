import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class DownButtonWidget extends StatelessWidget {
  const DownButtonWidget({
    super.key,
    this.onTapRejected,
    this.onTapWaiting,
    this.onTapApproved,
    this.onTapDeleteOrder,
  });
  final Function()? onTapRejected;
  final Function()? onTapWaiting;
  final Function()? onTapApproved;
  final Function()? onTapDeleteOrder;

  @override
  Widget build(BuildContext context) {
    double buttonsize = ResponsiveWidget.isMobile(context) ? 80 : 120;
    double paddinSize = ResponsiveWidget.isMobileLarge(context) ? 10 : 20;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ResponsiveWidget.isMobileLarge(context)
            ? GestureDetector(
          onTap: onTapDeleteOrder ?? () {},
                child: Icon(
                  CupertinoIcons.delete,
                  color: AppColors.redColour,
                ),
              ).paddingOnly(right: paddinSize)
            : CustomOutlineButton(
                width: buttonsize,
                primaryColour: AppColors.redColour,
                text:AppStrings.strDelete,

                onTap: onTapDeleteOrder ?? () {},
              ).paddingOnly(right: paddinSize),
        Row(
          children: [
            onTapRejected == null
                ? SizedBox.shrink()
                : CustomOutlineButton(
                    width: buttonsize,
                    primaryColour: AppColors.redColour,
                    text: AppStrings.strRejectedAd,
                    onTap: onTapRejected ?? () {},
                  ).paddingOnly(right: paddinSize),
            onTapWaiting == null
                ? SizedBox.shrink()
                : CustomOutlineButton(
                    primaryColour: AppColors.amberColor,
                    width: buttonsize,
                    text: AppStrings.strWaitingAd,
                    onTap: onTapWaiting ?? () {},
                  ).paddingOnly(right: paddinSize),
            onTapApproved == null
                ? SizedBox.shrink()
                : CustomOutlineButton(
                    width: buttonsize,
                    primaryColour: AppColors.greenColour,
                    text: AppStrings.strApprovedAd,
                    onTap: onTapApproved ?? () {},
                  ),
          ],
        )
      ],
    ).paddingSymmetric(horizontal: ResponsiveWidget.isMobile(context) ? 0 : 20);
  }
}
