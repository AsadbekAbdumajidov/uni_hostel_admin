import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/themes/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.textEditingController,
      this.onChange,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscure,
      this.textInputAction,
      this.fillColor,
      this.preIconColor,
      this.validator,
      this.autoFocus,
      this.focusNode,
      this.labelColor,
      this.initialValue,
      this.labelText,
      this.hintTextColor,
      this.textColor,
      this.readOnly = false,
      this.errorText,
      this.keyboardType,
      this.textInputFormatter,
      this.maxLength,
      this.borderColor,
      this.maxLines, this.onTap})
      : super(key: key);

  final TextEditingController? textEditingController;
  final Function(String value)? onChange;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final bool? obscure;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final FormFieldValidator<String>? validator;
  final bool? autoFocus;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? labelText;
  final Color? labelColor;
  final Color? borderColor;
  final Color? hintTextColor;
  final Color? textColor;
  final String? errorText;
  final int? maxLength;
  final int? maxLines;
  final Function()? onTap;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? textInputFormatter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      validator: validator,
      style: Theme.of(context)
          .textTheme
          .displaySmall
          ?.copyWith(color: textColor, fontSize: 16),
      onChanged: onChange,
      obscureText: obscure ?? false,
      autofocus: autoFocus ?? false,
      focusNode: focusNode,
      readOnly: readOnly,
      maxLines: maxLines,
      maxLength: maxLength,
      inputFormatters: textInputFormatter != null ? textInputFormatter! : null,
      initialValue: initialValue,
      controller: textEditingController,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscuringCharacter: "*",
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        errorText: errorText,
        hintStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: hintTextColor ?? AppColors.bodyTextColor.withOpacity(0.6),
            fontSize: 14),
        hintText: hintText,
        filled: false,
        labelText: labelText,
        labelStyle: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: labelColor, fontSize: 15),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        fillColor: fillColor,
        contentPadding: const EdgeInsets.fromLTRB(12, 6, 6, 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.bodyTextColor.withOpacity(0.4)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.bodyTextColor.withOpacity(0.4)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.bodyTextColor.withOpacity(0.4)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.primaryColor, width: 1.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.bodyTextColor.withOpacity(0.4)),
        ),
      ),
    );
  }
}
