import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/core/widget/custom_text_field.dart';
import 'package:uni_hostel_admin/di.dart';
import 'package:uni_hostel_admin/presentation/components/flush_bars.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/edit_monthly_price/edit_monthly_price_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/payments/get_payments_cubit.dart';

class EditMonthlyAlertDialog extends StatelessWidget {
  final formGlobalKey = GlobalKey<FormState>();
  EditMonthlyAlertDialog({
    super.key,
    required this.title,
    required this.name,
    required this.id,
  });
  final String title;
  final String name;
  final int id;

  @override
  Widget build(BuildContext context) {
    final monthlyPaymentController = TextEditingController();
    return FadeInUp(
        duration: Duration(milliseconds: 300),
        child: Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: BlocProvider<EditMonthlyPriceCubit>(
            create: (context) => inject<EditMonthlyPriceCubit>(),
            child: BlocBuilder<EditMonthlyPriceCubit, EditMonthlyPriceState>(
                builder: (context, state) {
              if (state.status == Status.SUCCESS) {
                showMessage(context, AppStrings.strOperationCompleted);
                context.read<PaymentsCubit>().payments();
                Navigator.pop(context);
              }
              var bloc = context.read<EditMonthlyPriceCubit>();
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
                                      fontSize:
                                          ResponsiveWidget.isMobile(context)
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
                          Column(
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
                                hintText: AppStrings.strOneMonthPayHint,
                                textInputFormatter: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                  LengthLimitingTextInputFormatter(7),
                                ],
                              ),
                              SizedBox(height: 30)
                            ],
                          )
                        ],
                      ),
                      CustomButton(
                          isLoading: state.status == Status.LOADING,
                          text: title,
                          onTap: () async {
                            await bloc.editMontlhyPrice(
                                id: id,
                                amount:
                                    int.parse(monthlyPaymentController.text));
                          },
                          width: 300)
                    ],
                  ).paddingAll(ResponsiveWidget.isMobile(context) ? 16 : 30),
                ),
              );
            }),
          ),
        ));
  }
}
