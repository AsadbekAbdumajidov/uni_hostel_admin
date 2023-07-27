import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/custom_app_bar/custom_app_bar.dart';
import 'package:uni_hostel_admin/presentation/view/profile_drawer/profile_drawer.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       drawer: Drawer(child: MenuDrawer()),endDrawer: ProfileDrawer(),
        body: Row(
          children: [
            ResponsiveWidget.isTablet(context) ? SizedBox.shrink() : MenuDrawer(),
            Expanded(
              child: Column(
                children: [CustomAppBar()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
