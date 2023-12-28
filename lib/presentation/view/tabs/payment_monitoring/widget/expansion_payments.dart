import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/general_functions.dart';
import 'package:uni_hostel_admin/data/models/payment_monitoring/payment_monitoring_response.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/on_hover/on_hover_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/profile/profile_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/mobile/user_information_mobile.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/edit_monthly_alert_dialog.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/expansion_items.dart';

class ExpansionPayments extends StatelessWidget {
  const ExpansionPayments(
      {super.key, this.userPayments, this.user, this.schedules});
  final List<Payments>? userPayments;
  final List<Schedules>? schedules;
  final PaymentsWhoPaidModel? user;

  @override
  Widget build(BuildContext context) {
    var status = context.watch<ProfileCubit>().state.response?.type;
    return Container(
        width: context.w,
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isMobile(context) ? 0 : 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResponsiveWidget.isMobile(context)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UserInformationMobile(
                          maxLines: 2,
                          title: AppStrings.strSN,
                          subTitle: user?.fullName ?? "-",
                        ),
                        UserInformationMobile(
                          maxLines: 2,
                          title: AppStrings.strFaculty,
                          subTitle: user?.facultyModel ?? "-",
                        ),
                        UserInformationMobile(
                          title: AppStrings.strCourse,
                          subTitle: user?.course ?? "-",
                        ),
                      ],
                    ).paddingOnly(left: 10)
                  : SizedBox.shrink(),
              ResponsiveWidget.isMobile(context)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UserInformationMobile(
                          maxLines: 2,
                          title: AppStrings.strTotalPayment,
                          subTitle: "${user?.total} ${AppStrings.strSum}",
                        ),
                        UserInformationMobile(
                          maxLines: 3,
                          title: AppStrings.strPaid,
                          subTitle: "${user?.paid} ${AppStrings.strSum}",
                        ),
                        UserInformationMobile(
                          title: AppStrings.strUnpaid,
                          subTitle: "${user?.duty} ${AppStrings.strSum}",
                        ),
                      ],
                    ).paddingOnly(left: 10)
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UserInformationMobile(
                          maxLines: 2,
                          title: AppStrings.strTotalPayment,
                          subTitle: "${user?.total} ${AppStrings.strSum}",
                        ),
                        UserInformationMobile(
                          maxLines: 3,
                          title: AppStrings.strPaid,
                          subTitle: "${user?.paid} ${AppStrings.strSum}",
                        ),
                        UserInformationMobile(
                          title: AppStrings.strUnpaid,
                          subTitle: "${user?.duty} ${AppStrings.strSum}",
                        ),
                      ],
                    ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppStrings.strGeneralfeeSchedule,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(fontWeight: FontWeight.w600)),
                      (status == "payment_super_admin" || status == "admin")
                          ? BlocProvider(
                              create: (context) => OnHoverCubit(),
                              child: BlocBuilder<OnHoverCubit, OnHoverState>(
                                  builder: (context, state) {
                                return InkWell(
                                  onHover: (v) =>
                                      context.read<OnHoverCubit>().getHover(v),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return EditMonthlyAlertDialog(
                                            id: user?.studentId ?? 0,
                                            title: AppStrings.strApprove,
                                            name: AppStrings
                                                .strMonthlyPaymentUpdate,
                                          );
                                        });
                                  },
                                  child: Row(
                                    children: [
                                      Text(AppStrings.strMonthlyPaymentUpdate,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  color: state.hover
                                                      ? AppColors.primaryColor
                                                      : AppColors.blackColor)),
                                      SizedBox(width: 2),
                                      Icon(Icons.edit,
                                          size: 20,
                                          color: state.hover
                                              ? AppColors.primaryColor
                                              : AppColors.blackColor),
                                    ],
                                  ),
                                );
                              }),
                            )
                          : SizedBox.shrink()
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor.withOpacity(.4),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    padding: EdgeInsets.all(6),
                    child: ExpansionPaymentsItem(
                      title1: AppStrings.strId,
                      title2: AppStrings.strPayment,
                      title3: AppStrings.strStatus,
                      title4: AppStrings.strDate,
                    ),
                  ).paddingOnly(bottom: 10),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => Divider(
                      color: AppColors.bodyTextColor,
                      thickness: 0.1,
                    ),
                    itemCount: schedules?.length ?? 0,
                    itemBuilder: (context, index) => ExpansionPaymentsItem(
                      title1: schedules?[index].id.toString() ?? "",
                      title2: schedules?[index].monthlyPrice.toString() ?? "",
                      title3:
                          schedules![index].payed ? "To'langan" : "To'lanmagan",
                      title4: schedules?[index].paymentDate ?? "",
                    ).paddingAll(8),
                  ),
                ],
              ),
              SizedBox(height: 10),
              userPayments?.length == 0
                  ? SizedBox.shrink()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppStrings.strDatesPaid,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontWeight: FontWeight.w600)),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor.withOpacity(.4),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12))),
                          padding: EdgeInsets.all(6),
                          child: ExpansionPaymentsItem(
                            title1: AppStrings.strId,
                            title2: AppStrings.strAmount,
                            title3: AppStrings.strStatus,
                            title4: AppStrings.strDate,
                          ),
                        ).paddingOnly(bottom: 10),
                        ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => Divider(
                            color: AppColors.bodyTextColor,
                            thickness: 0.1,
                          ),
                          itemCount: userPayments?.length ?? 0,
                          itemBuilder: (context, index) =>
                              ExpansionPaymentsItem(
                            title1: userPayments?[index].id.toString() ?? "",
                            title2: userPayments?[index].amount ?? "",
                            title3: userPayments?[index].status == "success"
                                ? "to'langan"
                                : "to'lanmagan",
                            title4: getFullDateTime(
                                userPayments?[index].payedAt, context),
                          ).paddingAll(8),
                        ),
                      ],
                    ),
            ],
          ),
        ));
  }
}
