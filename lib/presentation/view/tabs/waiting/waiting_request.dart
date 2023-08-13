import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_decoration.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/components/pagination.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/queue_order/queue_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/custom_card_widget.dart';

import '../students/widget/top_accepted_item_widget.dart';

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                CustomAppBar(onchange: (v) =>
                    context.read<QueueOrderCubit>().searchQueue(v),),
                Expanded(
                  child: Container(
                    height: 700,
                    width: context.w,
                    decoration: AppDecoration.customCardDecoration,
                    child:  BlocBuilder<QueueOrderCubit, QueueOrderState>(
                          builder: (context, state) {
                        if (state.status == Status.LOADING) {
                          return LoadingWidget();
                        }
                        var bloc = context.read<QueueOrderCubit>();

                        return InfiniteScrollingPagination(
                          onPagination: () {
                            context
                                .read<QueueOrderCubit>()
                                .getQueueOrderInfinite();
                          },
                          isLoading: state.loadingPagination,
                          child: ListView(
                            physics: ClampingScrollPhysics(),
                            children: [

                              TopAcceptedItemWidget(
                                title: AppStrings.strQueuingRequirements,
                                courses: courseList,
                                coursIndex: state.courseIndex,
                                faculties: state.facultiesList,
                                facultyIndex: state.facultyIndex?.name,
                                onChangeFaculty: (v)=>bloc.selectFaculty(v),
                                onChangecourse: (v) => bloc.selectCourse(v),
                              ),
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
                    ).paddingAll(20),
                  ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
