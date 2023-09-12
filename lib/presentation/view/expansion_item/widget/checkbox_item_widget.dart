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
        Theme(
          data: ThemeData(),
          child: Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            activeColor: AppColors.primaryColor,
            fillColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.primaryColor;
              }
              return AppColors.primaryColor;
            }),
            value: value,
            onChanged: onChange,
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
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color:
                        value ? AppColors.whiteColor : AppColors.blackColor)),
          ),
        ],
      ).paddingSymmetric(horizontal: 6),
    );
  }
}
