import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/validator.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/core/widget/custom_text_field.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/edit_status/edit_status_cubit.dart';

class EditStatusAlertDialog extends StatelessWidget {
  final formGlobalKey = GlobalKey<FormState>();
  EditStatusAlertDialog(
      {super.key,
      this.reason,
      required this.title,
      required this.id, required this.name});
  final String? reason;
  final String title;
  final String name;

  final int id;
  @override
  Widget build(BuildContext context) {
    final monthlyPaymentController = TextEditingController();
    final datePaymentController = TextEditingController();
    final reasonController = TextEditingController();
    return FadeInUp(
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: BlocBuilder<EditStatusCubit, EditStatusState>(
            builder: (context, state) {
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
                              ?.copyWith(fontWeight: FontWeight.w600, fontSize:ResponsiveWidget.isMobile(context)?16: 18),
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
                                  textEditingController: monthlyPaymentController,
                                  validator: (dynamic v) =>
                                      Validator.fieldChecker(
                                          value: v,
                                          message:
                                              AppStrings.strOneMonthPayValidate),
                                  hintText: AppStrings.strOneMonthPayHint,
                                  textInputFormatter: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                    CurrencyInputFormatter(),
                                    LengthLimitingTextInputFormatter(12),
                                  ],
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                      Text(AppStrings.strPaymentDate,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      color: AppColors.bodyTextColor,
                                      fontWeight: FontWeight.w500))
                          .paddingOnly(top: 20, bottom: 10),
                      CustomTextField(
                        validator: (v) => Validator.validateDay(v),
                        textEditingController: datePaymentController,
                        textInputFormatter: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(2),
                        ],
                        keyboardType: TextInputType.number,
                        hintText: AppStrings.strPaymentDateHint,
                      ),
                      reason != null
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
                                  validator: (dynamic v) => Validator.fieldChecker(
                                      value: v,
                                      message:
                                          "${reason}ni ${AppStrings.strNotEmpty}"),
                                  hintText: "${reason}ni kiriting",
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                      SizedBox(height: 30)
                    ],
                  ),
                  CustomButton(
                      text: title,
                      onTap: () {
                        if (formGlobalKey.currentState!.validate()) {
                          context.read<EditStatusCubit>().editStatus(
                                id,
                                title,
                                monthlyPaymentController.text,
                                reasonController.text,
                                datePaymentController.text,
                              );
                        }
                      },
                      width: 300)
                ],
              ).paddingAll(30),
            ),
          );
        }),
      ),
    );
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;

    // Remove all non-numeric characters
    String cleanedText = text.replaceAll(RegExp(r'[^\d]'), '');

    // Divide the cleaned number by 100 to get the value in so'm
    int amount = int.tryParse(cleanedText) ?? 0;
    double somValue = amount / 100.0;

    // Format the number with commas as thousands separators
    String formattedValue = _formatNumber(somValue);

    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }

  String _formatNumber(double value) {
    // Split the number into integer and decimal parts
    List<String> parts = value.toStringAsFixed(2).split('.');

    // Format the integer part with commas as thousands separators
    String integerPart = parts[0];
    String formattedInteger = '';
    for (int i = integerPart.length - 1, group = 0; i >= 0; i--, group++) {
      if (group > 0 && group % 3 == 0) {
        formattedInteger = ' ' + formattedInteger;
      }
      formattedInteger = integerPart[i] + formattedInteger;
    }

    // Combine the formatted integer part with the decimal part
    String formattedValue = formattedInteger + '.' + parts[1];

    return formattedValue;
  }
}
