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
import 'package:uni_hostel_admin/presentation/cubit/new_order/get_new_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/requests/widget/bottom_filter_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/requests/widget/top_request_item_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/differenet_card_widget.dart';

class RequestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double paddingSize = ResponsiveWidget.isMobileLarge(context) ? 14 : 30;
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
                  height: 800,
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
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              height: 800,
                              width: context.w,
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                children: [
                                  TopRequestItemWidget(
                                    index: state.maritalStatus,
                                    title: AppStrings.strRequests,
                                    list: maritals,
                                    courses: courseList,
                                    coursIndex: state.courseIndex,
                                    faculties: state.facultiesList,
                                    facultyIndex: state.facultyIndex?.name,
                                    onChanged: (v) => bloc.selectMaritals(v),
                                    onChangeFaculty: (v) =>
                                        bloc.selectFaculty(v),
                                    onChangecourse: (v) => bloc.selectCourse(v),
                                    onTapFilter: () {
                                      showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          backgroundColor:
                                              AppColors.transparent,
                                          builder: (context) {
                                            return BottomFilterWidget(
                                             
                                              
                                            ).paddingOnly(top: 80);
                                          });
                                    },
                                  ),
                                  DifferentCardWidget(
                                      orderList: state.orderList),
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
                                width: 229,
                                icon: CupertinoIcons.cloud_download,
                                isLoading: state.status == Status.UNKNOWN,
                                text: AppStrings.strOrderListUpload,
                                ounLineColour: AppColors.primaryColor,
                                onTap: () async {
                                  await context
                                      .read<GetNewOrderCubit>()
                                      .getOrdersList();
                                },
                              ).paddingOnly(right: paddingSize, bottom: 16),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                ).paddingAll(ResponsiveWidget.isMobileLarge(context) ? 10 : 20),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
