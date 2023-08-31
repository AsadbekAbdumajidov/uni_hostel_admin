import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';

class SlideBarWidget extends StatelessWidget {
  const SlideBarWidget({super.key, required this.list});
  final List list;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      toolbarHeight: 0,
      automaticallyImplyLeading: false,
      bottom: AppBar(
        toolbarHeight: 80,
        actions: [Text("")],
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TabBar(
              indicatorWeight: 2,
              indicatorColor: AppColors.primaryColor,
              isScrollable: true,
              labelColor: AppColors.primaryColor,
              unselectedLabelStyle: Theme.of(context).textTheme.displaySmall,
              labelStyle: Theme.of(context).textTheme.displaySmall,
              unselectedLabelColor: AppColors.blackColor,
              indicator: UnderlineTabIndicator(
                  borderRadius: BorderRadius.circular(16),
                  borderSide:
                      BorderSide(width: 2, color: AppColors.primaryColor)),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: List.generate(
                list.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    list[index],
                    style: Theme.of(context).textTheme.displaySmall,
                  ).paddingOnly(bottom: 4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
