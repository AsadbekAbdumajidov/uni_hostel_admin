import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class PaymentCardItemWidget extends StatelessWidget {
  const PaymentCardItemWidget({
    super.key,
    required this.userName,
    this.textStatus,
    this.statusColor,
    required this.isFirst,
    required this.date,
    required this.quantity,
    required this.cardNumber,
    required this.checkNumber,
    this.status,
  });
  final String userName;
  final String date;
  final String quantity;
  final String cardNumber;
  final String checkNumber;
  final String? textStatus;

  final bool isFirst;
  final bool? status;

  final Color? statusColor;
  @override
  Widget build(BuildContext context) {
    double textSize = isFirst
        ? ResponsiveWidget.isMobileLarge(context)
            ? 16
            : 18
        : ResponsiveWidget.isMobileLarge(context)
            ? 14
            : 16;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  userName,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: isFirst ? FontWeight.w500 : FontWeight.w400,
                      fontSize: textSize),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: ResponsiveWidget.isMobile(context) ? 2 : 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isFirst
                  ? Text(
                      textStatus ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontWeight:
                                  isFirst ? FontWeight.w500 : FontWeight.w400,
                              fontSize: textSize),
                    )
                  : ResponsiveWidget.isMobile(context)
                      ? Icon(
                          status == true
                              ? CupertinoIcons.check_mark_circled
                              : CupertinoIcons.xmark_circle,
                          color: status == true
                              ? AppColors.greenColour
                              : AppColors.redColour,
                        )
                      : Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: status == true
                                      ? AppColors.greenColour
                                      : AppColors.redColour,
                                  width: .5),
                              color: status == true
                                  ? AppColors.greenColour.withOpacity(0.1)
                                  : AppColors.redColour.withOpacity(0.1)),
                          child: Expanded(
                            child: Center(
                              child: Text(
                                status == true
                                    ? AppStrings.strPaid
                                    : AppStrings.strNotPaid,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      fontSize: textSize,
                                      fontWeight: FontWeight.w200,
                                      color: status == true
                                          ? AppColors.greenColour
                                          : AppColors.redColour,
                                    ),
                              ),
                            ),
                          ).paddingSymmetric(vertical: 4, horizontal: 10),
                        ),
            ],
          ),
        ),
        ResponsiveWidget.isMobileLarge(context)
            ? SizedBox.shrink()
            : Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isFirst
                        ? Expanded(
                            child: Text(
                              checkNumber,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      fontWeight: isFirst
                                          ? FontWeight.w500
                                          : FontWeight.w400,
                                      fontSize: textSize),
                            ),
                          )
                        : Text(
                            checkNumber,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                    fontWeight: isFirst
                                        ? FontWeight.w500
                                        : FontWeight.w400,
                                    fontSize: textSize),
                          ),
                  ],
                ),
              ),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                quantity,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: isFirst ? FontWeight.w500 : FontWeight.w400,
                    fontSize: textSize),
              ),
            ],
          ),
        ),
        ResponsiveWidget.isTablet(context)
            ? SizedBox.shrink()
            : Expanded(
                flex: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      cardNumber,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontWeight:
                                  isFirst ? FontWeight.w500 : FontWeight.w400,
                              fontSize: textSize),
                    ),
                  ],
                ),
              ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                date,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: isFirst ? FontWeight.w500 : FontWeight.w400,
                    fontSize: textSize),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
