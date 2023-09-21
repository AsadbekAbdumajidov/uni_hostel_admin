import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';

class CheckboxItemWidget extends StatelessWidget {
  const CheckboxItemWidget(
      {super.key, required this.title, required this.value, this.onChange});
  final String title;
  final bool value;
  final Function(bool? v)? onChange;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
            scale: 1,
            child: Theme(
              data: ThemeData(),
              child: Checkbox(
                checkColor: AppColors.whiteColor,
                activeColor: AppColors.primaryColor,
                side: BorderSide(color:AppColors.primaryColor,width: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                value: value,
                onChanged: onChange,
              ),
            ),
          ),
        
        Expanded(
          child: Text(title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall),
        ),
      ],
    );
  }
}

class CheckboxItemRowWidget extends StatelessWidget {
  const CheckboxItemRowWidget(
      {super.key,
      required this.title,
      required this.value,
      this.onChange,
      this.hover = false});
  final String title;
  final bool value;
  final bool hover;

  final Function(bool? v)? onChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: value
            ? AppColors.primaryColor
            : hover
                ? AppColors.primaryColor.withOpacity(0.3)
                : AppColors.whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color:
                        value ? AppColors.whiteColor : AppColors.blackColor)),
          ),
        ],
      ).paddingSymmetric(horizontal: 6),
    );
  }
}
