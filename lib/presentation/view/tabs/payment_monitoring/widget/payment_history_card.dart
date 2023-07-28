import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/check_alert_dialog.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/payment_card_item_widget.dart';

class PaymentHistoryCardWidget extends StatelessWidget {
  const PaymentHistoryCardWidget({
    super.key,
    required this.userName,
    required this.date,
    required this.quantity,
    required this.cardNumber,
    required this.checkNumber,
  });
  final String userName;
  final String date;
  final String quantity;
  final String cardNumber;
  final String checkNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            PaymentCardItemWidget(
              isFirst: true,
              userName: AppStrings.strSN,
              textStatus: AppStrings.strStatus,
              date: AppStrings.strDate,
              quantity: AppStrings.strQuantity,
              cardNumber: AppStrings.strCardNumber,
              checkNumber: AppStrings.strCheckNumber,
            ),
            Divider()
          ],
        ).paddingOnly(bottom: 4),
        ListView.separated(
            itemCount: 14,
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 4),
            itemBuilder: (_, __) {
              return GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return FadeInUp(child: CheckAlertDialog());
                      });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: __.isEven
                        ? AppColors.backgroundColour
                        : AppColors.transparent,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    ),
                  ),
                  child: PaymentCardItemWidget(
                    userName: userName,
                    isFirst: false,
                    status: __.isEven ? true : false,
                    quantity: quantity,
                    date: date,
                    cardNumber: cardNumber,
                    checkNumber: checkNumber,
                  ).paddingSymmetric(vertical: 14, horizontal: 6),
                ),
              );
            }),
      ],
    );
  }
}
