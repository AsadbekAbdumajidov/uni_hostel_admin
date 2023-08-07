import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_decoration.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/di.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/components/pagination.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/order/get_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/custom_card_widget.dart';

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 22 : 24;
    double paddingSize = ResponsiveWidget.isMobileLarge(context) ? 16 : 30;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(child: MenuDrawer()),
        endDrawer: ProfileDrawer(),
        body: Row(children: [
          ResponsiveWidget.isTablet(context) ? SizedBox.shrink() : MenuDrawer(),
          Expanded(
            child: Column(
              children: [
                CustomAppBar(),
                Expanded(
                  child: Container(
                    width: context.w,
                    decoration: AppDecoration.customCardDecoration,
                    child: BlocProvider<GetOrderCubit>(
                      create: (context) =>
                          inject<GetOrderCubit>()..getOrder("in_queue"),
                      child: BlocBuilder<GetOrderCubit, GetOrderState>(
                          builder: (context, state) {
                        if (state.status == Status.LOADING) {
                          return LoadingWidget();
                        }
                        return InfiniteScrollingPagination(
                          onPagination: () {
                            context
                                .read<GetOrderCubit>()
                                .getOrderInfinite("in_queue");
                          },
                          isLoading: state.loadingPagination,
                          child: ListView(
                            physics: ClampingScrollPhysics(),
                            children: [
                              Row(
                                children: [
                                  Text(AppStrings.strQueuingRequirements,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium
                                          ?.copyWith(fontSize: textSize)),
                                ],
                              ).paddingOnly(bottom: 40),
                              CustomCardWidget(
                                notButtonIndex: 2,
                                list: state.orderList,
                                statusColor: AppColors.amberColor,
                                textStatus: AppStrings.strWaiting,
                              ),
                            ],
                          ),
                        ).paddingAll(paddingSize);
                      }),
                    ),
                  ).paddingAll(20),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
