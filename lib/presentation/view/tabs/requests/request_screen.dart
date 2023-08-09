import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_decoration.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/components/pagination.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/new_order/get_new_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/requests/widget/top_request_item_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/differenet_card_widget.dart';

class RequestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(child: MenuDrawer()),
        endDrawer: ProfileDrawer(),
        body: Row(children: [
          ResponsiveWidget.isTablet(context) ? SizedBox.shrink() : MenuDrawer(),
          Expanded(
            child: Column(children: [
              CustomAppBar(
                onchange: (v) =>
                    context.read<GetNewOrderCubit>().searchRequests(v),
              ),
              Expanded(
                child: Container(
                  height: 700,
                  width: context.w,
                  decoration: AppDecoration.customCardDecoration,
                  child: BlocBuilder<GetNewOrderCubit, GetNewOrderState>(
                      builder: (context, state) {
                    if (state.status == Status.LOADING) {
                      return Container(
                          height: 400, width: 400, child: LoadingWidget());
                    }
                    var bloc = context.read<GetNewOrderCubit>();
                    return InfiniteScrollingPagination(
                      onPagination: () => bloc.getOrderInfinite(),
                      isLoading: state.loadingPagination,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          TopRequestItemWidget(
                              index: state.maritalStatus,
                              title: AppStrings.strRequests,
                              list: maritals,
                              onChanged: (v) => bloc.selectMaritals(v)),
                          DifferentCardWidget(orderList: state.orderList),
                        ],
                      ),
                    ).paddingAll(
                        ResponsiveWidget.isMobileLarge(context) ? 16 : 30);
                  }),
                ).paddingAll(20),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
