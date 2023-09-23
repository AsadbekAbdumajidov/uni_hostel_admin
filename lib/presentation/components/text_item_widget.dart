import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/validator.dart';
import 'package:uni_hostel_admin/core/widget/custom_text_field.dart';

class TextItemWidget extends StatelessWidget {
  const TextItemWidget(
      {super.key,
      required this.hintText,
      required this.flex,
      this.isReadOnly = false,
      this.initialValue,
      this.onchange,
      this.onTap,
      this.textEditingController,
      this.style, this.textInputAction});
  final String hintText;
  final String? initialValue;
  final Function(dynamic v)? onchange;
  final int flex;
  final bool? isReadOnly;
  final Function()? onTap;
  final TextEditingController? textEditingController;
  final TextStyle? style;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hintText,
              style: style ?? Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 10),
          CustomTextField(
            onChange: onchange,
            textInputAction:textInputAction?? TextInputAction.next,
            readOnly: isReadOnly ?? false,
            initialValue: initialValue,
            textColor: AppColors.blackColor,
            textEditingController: textEditingController,
            hintText: "${hintText} ${AppStrings.strEnter}",
            validator: (dynamic v) => Validator.notEmpty(value: v),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
