import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_decoration.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/components/pagination.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/accepted_order/accepted_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/students/widget/top_accepted_item_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/custom_card_widget.dart';
import '../../../../core/themes/app_text.dart';
import '../../../../core/utils/utils.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({super.key});

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  @override
  Widget build(BuildContext context) {
    double paddingSize = ResponsiveWidget.isMobileLarge(context) ? 16 : 30;
    return SafeArea(
      child: Scaffold(
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
                    onchange: (v) =>
                        context.read<AcceptedOrderCubit>().searchAccepted(v),
                  ),
                  Expanded(
                    child: Container(
                      height: 700,
                      width: context.w,
                      decoration: AppDecoration.customCardDecoration,
                      child:
                          BlocBuilder<AcceptedOrderCubit, AcceptedOrderState>(
                              builder: (context, state) {
                        if (state.status == Status.LOADING) {
                          return LoadingWidget();
                        }
                        var bloc = context.read<AcceptedOrderCubit>();
                        return InfiniteScrollingPagination(
                          onPagination: () => bloc.getAcceptedOrderInfinite(),
                          isLoading: state.loadingPagination,
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            children: [
                              TopAcceptedItemWidget(
                                title: AppStrings.strApproveds,
                                courses: courseList,
                                coursIndex: state.courseIndex,
                                onChangecourse: (v) => bloc.selectCourse(v),
                              ),
                              CustomCardWidget(
                                notButtonIndex: 0,
                                list: state.orderList,
                                statusColor: AppColors.greenColour,
                                textStatus: AppStrings.strApproved,
                              ),
                            ],
                          ),
                        ).paddingAll(paddingSize);
                      }),
                    ).paddingAll(20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
