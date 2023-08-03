import 'package:flutter/material.dart';
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            activeColor: AppColors.primaryColor,
            fillColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.primaryColor;
              }
              return Colors.orange;
            }),
            value: value,
            onChanged: onChange,
          ),
        ),
        Expanded(
          child: Text(title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
