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
import 'package:uni_hostel_admin/presentation/cubit/cancelled_order/cancelled_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/rejected/widget/bottom_filter_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/requests/widget/top_request_item_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/custom_card_widget.dart';

class RejectedScreen extends StatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double paddingSize = ResponsiveWidget.isMobileLarge(context) ? 16 : 30;

    return Scaffold(
      drawer: Drawer(child: MenuDrawer()),
      endDrawer: ProfileDrawer(),
      body: Row(
        children: [
          ResponsiveWidget.isTablet(context) ? SizedBox.shrink() : MenuDrawer(),
          Expanded(
            child: Column(
              children: [
                CustomAppBar(
                    isSearch: true,
                    textEditingController: searchController,
                    onchange: (v) =>
                        context.read<CancelledOrderCubit>().searchCancelled(v),
                    onCancel: () {
                      context.read<CancelledOrderCubit>().searchCancelled('');
                      searchController.text = "";
                    }),
                Expanded(
                  child: Container(
                    height: 700,
                    width: context.w,
                    decoration: AppDecoration.customCardDecoration,
                    child:
                        BlocBuilder<CancelledOrderCubit, CancelledOrderState>(
                            builder: (context, state) {
                      if (state.status == Status.LOADING) {
                        return LoadingWidget(size: 40);
                      }
                      var bloc = context.read<CancelledOrderCubit>();

                      return InfiniteScrollingPagination(
                          onPagination: () {
                            context
                                .read<CancelledOrderCubit>()
                                .getCancelledOrderInfinite();
                          },
                          isLoading: state.loadingPagination,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 700,
                                  width: context.w,
                                  child: ListView(
                                    physics: ClampingScrollPhysics(),
                                    children: [
                                      TopRequestItemWidget(
                                          count: state.orderResponse?.count,
                                          index: state.maritalStatus,
                                          title: AppStrings.strRequests,
                                          list: maritals,
                                          courses: courseList,
                                          coursIndex: state.courseIndex,
                                          faculties: state.facultiesList,
                                          facultyIndex:
                                              state.facultyIndex?.name,
                                          onChanged: (v) =>
                                              bloc.selectMaritals(v),
                                          onChangeFaculty: (v) =>
                                              bloc.selectFaculty(v),
                                          onChangecourse: (v) =>
                                              bloc.selectCourse(v),
                                          onTapFilter: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return BottomFilterCancelledWidget(
                                                   
                                                  );
                                                });
                                            // showModalBottomSheet(
                                            //     context: context,
                                            //     isScrollControlled: true,
                                            //     backgroundColor:
                                            //         AppColors.transparent,
                                            //     builder: (context) {
                                            //       return BottomFilterCancelledWidget(
                                            //         indexM: state.maritalStatus,
                                            //         list: maritals,
                                            //         courses: courseList,
                                            //         coursIndex:
                                            //             state.courseIndex,
                                            //         faculties:
                                            //             state.facultiesList,
                                            //         facultyIndex: state
                                            //             .facultyIndex?.name,
                                            //       ).paddingOnly(top: 80);
                                            //     });
                                          }),
                                      CustomCardWidget(
                                          notButtonIndex: 1,
                                          list: state.orderList,
                                          textStatus: AppStrings.strRejected),
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
                                    isLoading: state.status == Status.UNKNOWN,
                                    text: AppStrings.strOrderListUpload,
                                    ounLineColour: AppColors.primaryColor,
                                    onTap: () async {
                                      await context
                                          .read<CancelledOrderCubit>()
                                          .getOrdersList();
                                    },
                                  ).paddingOnly(right: paddingSize, bottom: 16),
                                ],
                              ),
                            ],
                          ));
                    }),
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
}
