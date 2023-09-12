import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_icons.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/widget/status_widget.dart';
import 'package:uni_hostel_admin/data/models/payment_monitoring/payment_monitoring_response.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/expansion_payments.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/card_item_widget.dart';

class PaymentHistoryCardWidget extends StatelessWidget {
  const PaymentHistoryCardWidget({super.key, this.response});
  final List<PaymentsWhoPaidModel>? response;
  @override
  Widget build(BuildContext context) {
    return response!.isEmpty
        ? StepStatusWidget(
            img: AppIcons.iconBgRejected,
            title: AppStrings.strApplicationEmpty,
          )
        : Column(
            children: [
              Column(
                children: [
                  CardItemWidget(
                    isIcon: true,
                    userName: AppStrings.strSN,
                    date: AppStrings.strTTJ,
                    time: AppStrings.strCourse,
                  ),
                  Divider()
                ],
              ).paddingOnly(bottom: 4),
              ListView.separated(
                  padding: EdgeInsets.all(0),
                  physics: BouncingScrollPhysics(),
                  itemCount: response?.length ?? 0,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: 4),
                  itemBuilder: (_, __) {
                    return Container(
                      decoration: BoxDecoration(
                        color: __.isEven
                            ? AppColors.backgroundColour
                            : AppColors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(7),
                          bottomRight: Radius.circular(7),
                        ),
                      ),
                      child: Theme(
                        data: ThemeData()
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          tilePadding: EdgeInsets.only(right: 12),
                          title: CardItemWidget(
                            textOverflow: TextOverflow.ellipsis,
                            userName: "${__ + 1}. ${response?[__].fullName}",
                            img: null,
                            date: response?[__].facultyModel ?? "-",
                            time: response?[__].course ?? "-",
                            isIcon: false,
                          ).paddingSymmetric(horizontal: 8, vertical: 20),
                          children: [
                            ExpansionPayments(
                              user: response?[__],
                              userPayments: response?[__].payments ?? [],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          );
  }
}
