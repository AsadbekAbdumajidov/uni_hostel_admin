import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/view/menu_drawer/menu_drawer.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/custom_app_bar.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   drawer: Drawer(child: MenuDrawer()),
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
    );
  }
}
