// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_decoration.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/di.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/components/pagination.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/payments/get_payments_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/payment_history_card.dart';

class PaymentMonitoring extends StatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double paddingSize = ResponsiveWidget.isMobileLarge(context) ? 14 : 30;
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 22 : 24;
    return BlocProvider<PaymentsCubit>(
      create: (context) => inject<PaymentsCubit>()..payments(),
      child:
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
                                    Row(
                                      children: [
                                        Text(
                                          AppStrings.strPaymentHistory,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium
                                              ?.copyWith(fontSize: textSize),
                                        ),
                                        Text(
                                                state.response?.count
                                                        .toString() ??
                                                    "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge)
                                            .paddingOnly(
                                                top: 4, left: paddingSize),
                                      ],
                                    ),
                                    SizedBox(height: paddingSize),
                                    Expanded(
                                        child: Container(
                                      height: 800,
                                      width: context.w,
                                      child: SingleChildScrollView(
                                          physics: BouncingScrollPhysics(),
                                          child: PaymentHistoryCardWidget(
                                              response: state.whoPaidList)),
                                    )),
                                  ],
                                ).paddingOnly(
                                    top: paddingSize,
                                    left: paddingSize,
                                    right: paddingSize,
                                    bottom: 16),
                              ),
                      ).paddingOnly(
                          top: 4,
                          left: paddingSize,
                          right: paddingSize,
                          bottom: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
