import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/core/utils/validator.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/core/widget/custom_text_field.dart';
import 'package:uni_hostel_admin/presentation/components/flush_bars.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/accepted_order/accepted_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/cancelled_order/cancelled_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/edit_status/edit_status_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/new_order/get_new_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/queue_order/queue_order_cubit.dart';

class EditStatusAlertDialog extends StatelessWidget {
  final formGlobalKey = GlobalKey<FormState>();
  EditStatusAlertDialog(
      {super.key,
      this.reason,
      required this.title,
      required this.id,
      required this.name,
      required this.disabled,
      required this.ironNotebook,
      required this.womensBook,
      required this.youthsNotebook,
      required this.fosterHome,
      required this.noBreadwinner,
      required this.oneParentsIsDead,
      required this.hasManyChildrenFamily,
      required this.giftedStudent});
  final String? reason;
  final String title;
  final String name;
  final int id;
  final bool disabled;
  final bool ironNotebook;
  final bool womensBook;
  final bool youthsNotebook;
  final bool fosterHome;
  final bool noBreadwinner;
  final bool oneParentsIsDead;
  final bool hasManyChildrenFamily;
  final bool giftedStudent;
  @override
  Widget build(BuildContext context) {
    final monthlyPaymentController = TextEditingController();
    final datePaymentController = TextEditingController();
    final reasonController = TextEditingController();
    return FadeInUp(
      duration: Duration(milliseconds: 300),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: BlocBuilder<EditStatusCubit, EditStatusState>(
            builder: (context, state) {
          if (state.status == Status.SUCCESS) {
            showMessage(context, state.response?.message ?? "");
            Navigator.pop(context);
            context.read<GetNewOrderCubit>().getNewOrder();
            context.read<AcceptedOrderCubit>().getAcceptedOrder();
            context.read<CancelledOrderCubit>().getCancelledOrder();
            context.read<QueueOrderCubit>().getQueueOrder();
            context.read<EditStatusCubit>().getStart();
          }
          return Form(
            key: formGlobalKey,
            child: Container(
              width: 600,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: ResponsiveWidget.isMobile(context)
                                      ? 14
                                      : 18),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(CupertinoIcons.xmark),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      title != AppStrings.strRejectedAd
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppStrings.strOneMonthPay,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        color: AppColors.bodyTextColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ).paddingOnly(top: 20, bottom: 10),
                                CustomTextField(
                                  textEditingController:
                                      monthlyPaymentController,
                                  hintText: AppStrings.strOneMonthPayHint,
                                  textInputFormatter: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                    LengthLimitingTextInputFormatter(7),
                                  ],
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                      title != AppStrings.strRejectedAd
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(AppStrings.strPaymentDate,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(
                                                color: AppColors.bodyTextColor,
                                                fontWeight: FontWeight.w500))
                                    .paddingOnly(top: 20, bottom: 10),
                                CustomTextField(
                                  // validator: (v) => Validator.validateDay(v),
                                  textEditingController: datePaymentController,
                                  textInputFormatter: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                    LengthLimitingTextInputFormatter(2),
                                  ],
                                  keyboardType: TextInputType.number,
                                  hintText: AppStrings.strPaymentDateHint,
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                      title == AppStrings.strRejectedAd
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(reason ?? "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(
                                                color: AppColors.bodyTextColor,
                                                fontWeight: FontWeight.w500))
                                    .paddingOnly(top: 20, bottom: 10),
                                CustomTextField(
                                  maxLines: 3,
                                  textEditingController: reasonController,
                                  validator: (dynamic v) =>
                                      Validator.fieldChecker(
                                          value: v,
                                          message: AppStrings.strIsNotEmpty),
                                  hintText: "${reason}ni kiriting",
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                      SizedBox(height: 30)
                    ],
                  ),
                  CustomButton(
                      isLoading: state.status == Status.LOADING,
                      text: title,
                      onTap: () {
                        if (formGlobalKey.currentState!.validate()) {
                          var monthlyPayment =
                              monthlyPaymentController.text == ""
                                  ? null
                                  : int.parse(monthlyPaymentController.text);
                          var datePayment = datePaymentController.text == ""
                              ? null
                              : int.parse(datePaymentController.text);
                          context.read<EditStatusCubit>().editStatus(
                                id,
                                title,
                                monthlyPayment,
                                reasonController.text,
                                datePayment,
                                ironNotebook,
                                womensBook,
                                youthsNotebook,
                                fosterHome,
                                noBreadwinner,
                                oneParentsIsDead,
                                disabled,
                                giftedStudent,
                                hasManyChildrenFamily,
                              );
                        }
                      },
                      width: 300)
                ],
              ).paddingAll(ResponsiveWidget.isMobile(context) ? 16 : 30),
            ),
          );
        }),
      ),
    );
  }
}
