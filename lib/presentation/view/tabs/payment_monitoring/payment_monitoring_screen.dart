// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_decoration.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/components/pagination.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/payments/get_payments_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/payment_history_card.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/top_item_widget.dart';

class PaymentMonitoring extends StatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double paddingSize = ResponsiveWidget.isMobileLarge(context) ? 14 : 30;
    return 
          BlocBuilder<PaymentsCubit, PaymentsState>(builder: (context, state) {
        var bloc = context.read<PaymentsCubit>();
        return Scaffold(
          drawer: Drawer(child: MenuDrawer()),
          endDrawer: ProfileDrawer(),
          body: Row(
            children: [
              ResponsiveWidget.isTablet(context)
                  ? SizedBox.shrink()
                  : MenuDrawer(),
              Expanded(
                child: Column(
                  children: [
                    CustomAppBar(
                        isSearch: true,
                        textEditingController: searchController,
                        onchange: (v) =>
                            context.read<PaymentsCubit>().searchRequests(v),
                        onCancel: () {
                          context.read<PaymentsCubit>().searchRequests('');
                          searchController.text = "";
                        }),
                    Expanded(
                      child: Container(
                        height: 850,
                        width: context.w,
                        decoration: AppDecoration.customCardDecoration,
                        child: (state.status == Status.LOADING)
                            ? LoadingWidget(size: 40)
                            : InfiniteScrollingPagination(
                                onPagination: () => bloc.paymentsInfinite(),
                                isLoading: state.loadingPagination,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 800,
                                        width: context.w,
                                        child: ListView(
                                          physics: BouncingScrollPhysics(),
                                          children: [
                                            TopItemPaymentMonitoringWidget(
                                              title:
                                                  AppStrings.strPaymentHistory,
                                              count: state.response?.count,
                                              dormitoryIndex:
                                                  state.dormitoryIndex,
                                              dormitoryList:
                                                  state.dormitoryList,
                                              onchangedormitory: (v) =>
                                                  bloc.selectDormitory(v),
                                              index: state.maritalStatus,
                                              list: maritals,
                                              faculties: state.facultiesList,
                                              facultyIndex:
                                                  state.facultyIndex?.name,
                                              onChanged: (v) =>
                                                  bloc.selectMaritals(v),
                                              onChangeFaculty: (v) =>
                                                  bloc.selectFaculty(v),
                                            ),
                                            PaymentHistoryCardWidget(
                                                response: state.whoPaidList),
                                          ],
                                        ),
                                      ).paddingOnly(
                                          top: paddingSize,
                                          left: paddingSize,
                                          right: paddingSize,
                                          bottom: 16),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomOutlineButton(
                                          width: 225,
                                          icon: CupertinoIcons.cloud_download,
                                          isLoading:
                                              state.status == Status.UNKNOWN,
                                          text: AppStrings.strOrderListUpload,
                                          ounLineColour: AppColors.primaryColor,
                                          onTap: () async =>
                                              await bloc.getDormitoryList(),
                                        ).paddingOnly(
                                            right: paddingSize, bottom: 16),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                      ).paddingAll(
                          ResponsiveWidget.isMobileLarge(context) ? 10 : 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
