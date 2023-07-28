import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';

class AppDecoration {
  AppDecoration._();
  static BoxDecoration customCardDecoration = BoxDecoration(
    color: Colors.white,
    border:
        Border.all(color: AppColors.primaryColor.withOpacity(.4), width: .5),
    boxShadow: [
      BoxShadow(
          offset: const Offset(0, 6),
          color: AppColors.bodyTextColor.withOpacity(.1),
          blurRadius: 12)
    ],
    borderRadius: BorderRadius.circular(8),
  );
}
