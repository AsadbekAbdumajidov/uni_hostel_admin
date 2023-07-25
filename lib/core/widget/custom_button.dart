import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/utils/size_konfig.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import '../../../core/themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.textColor,
      this.isLoading = false,
      this.bgColor,
      this.width,
      this.radius,
      this.style, this.icon})
      : super(key: key);

  final String text;
  final Function() onTap;
  final Color? textColor;
  final bool isLoading;
  final double? width;
  final double? radius;
  final Color? bgColor;
  final Widget? icon;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(radius ?? 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius ?? 5),
        onTap: onTap,
        child: Ink(
          height: 40,
          width: width ?? context.w,
          decoration: BoxDecoration(
            color: bgColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? SizedBox.shrink(),
              isLoading
                  ? SizedBox(
                      height: he(30),
                      width: he(30),
                      child: const LoadingWidget(color: AppColors.whiteColor))
                  :  Text(text,
                      style: style ??
                          Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: AppColors.whiteColor)),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.bgColor,
    this.width, this.style, this.ounLineColour, this.radius,
  }) : super(key: key);
  final String text;
  final double? width;
  final Function() onTap;
  final Color? bgColor;final TextStyle? style;
 final Color? ounLineColour;final double? radius;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(radius??5),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius??5),
        onTap: onTap,
        child: Ink(
          height: 40,
          width: width ?? context.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius??5),
              border: Border.all(color:ounLineColour?? AppColors.primaryColor, width: wi(2)),
              color: bgColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text,
                  style:style?? Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColors.primaryColor)),
            ],
          ),
        ),
      ),
    );
  }
}
