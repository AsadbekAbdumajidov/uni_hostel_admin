import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/di.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/get_statistics/statistics_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/slidebar_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/statistics_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/main_statistics/statistics_item_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/student_statistics/student_statistics.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List list = ["Arizalar bo'yicha", "Talabalar bo'yicha"];
    return BlocProvider(
        create: (context) => inject<StatisticsCubit>()..getMainStat(),
        child: Scaffold(
          drawer: Drawer(child: MenuDrawer()),
          endDrawer: ProfileDrawer(),
          body: Row(children: [
            ResponsiveWidget.isTablet(context)
                ? SizedBox.shrink()
                : MenuDrawer(),
            Expanded(
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      StatisticsAppBar(),
                      Expanded(
                        child: DefaultTabController(
                          length: list.length,
                          child: NestedScrollView(
                            headerSliverBuilder: (ctx, value) {
                              return [SlideBarWidget(list: list)];
                            },
                            body: BlocBuilder<StatisticsCubit, StatisticsState>(
                                builder: (context, state) {
                              if (state.status == Status.LOADING) {
                                return LoadingWidget(size: 40);
                              }
                              return TabBarView(
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  StatisTicsView(response: state.response),
                                  StudentStatistics(
                                      response: state.studentResponse),
                                ],
                              );
                            }),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ]),
        ));
  }
}
