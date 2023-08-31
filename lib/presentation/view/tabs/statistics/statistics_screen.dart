import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/slidebar_widget.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/statistics_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/statistics/widget/statistics_item_widget.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List list = ["Kurs bo'yicha", "Fakultet bo'yicha", "TTJ bo'yicha"];
    return Scaffold(
        drawer: Drawer(child: MenuDrawer()),
        endDrawer: ProfileDrawer(),
        body: Row(children: [
          ResponsiveWidget.isTablet(context) ? SizedBox.shrink() : MenuDrawer(),
          Expanded(
            child: Column(
              children: [
                StatisticsAppBar(),
                Expanded(
                  child: SafeArea(
                    child: DefaultTabController(
                      length: list.length,
                      child: NestedScrollView(
                        headerSliverBuilder: (ctx, value) {
                          return [
                            SlideBarWidget(list: list),
                          ];
                        },
                        body: TabBarView(
                          children: [
                            StatisTicsView(),
                            Icon(Icons.directions_transit),
                            Icon(Icons.directions_bike),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
