import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/cubit/on_hover/on_hover_cubit.dart';
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
      this.style,
      this.icon})
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
                      height: 30,
                      width: 30,
                      child: const LoadingWidget(color: AppColors.whiteColor))
                  : Text(text,
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
  const CustomOutlineButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.width,
      this.style,
      this.ounLineColour,
      this.radius,
      this.primaryColour,
      this.isLoading = false,
      this.icon})
      : super(key: key);
  final String text;
  final double? width;
  final Function() onTap;
  final TextStyle? style;
  final Color? primaryColour;
  final Color? ounLineColour;
  final double? radius;
  final bool isLoading;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnHoverCubit(),
      child: BlocBuilder<OnHoverCubit, OnHoverState>(builder: (context, state) {
        return InkWell(
          borderRadius: BorderRadius.circular(radius ?? 5),
          onHover: (v) => context.read<OnHoverCubit>().getHover(v),
          onTap: onTap,
          child: Container(
            height: 30,
            width: width ?? null,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius ?? 5),
                border: Border.all(
                    color: primaryColour ?? AppColors.primaryColor, width: 0.7),
                color: state.hover
                    ? primaryColour ?? primaryColour ?? AppColors.primaryColor
                    : AppColors.whiteColor),
            child: Center(
              child: isLoading
                  ? LoadingWidget(
                      color: state.hover
                          ? AppColors.whiteColor
                          : AppColors.primaryColor).paddingOnly(right: 12)
                  : Row(
                      mainAxisAlignment: icon == null
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.spaceBetween,
                      children: [
                        Text(text,
                            overflow: TextOverflow.ellipsis,
                            style: style ??
                                TextStyle(
                                    color: state.hover
                                        ? AppColors.whiteColor
                                        : AppColors.blackColor,
                                    fontWeight: FontWeight.w300)),
                        SizedBox(width: 10),
                        icon == null
                            ? SizedBox.shrink()
                            : Icon(
                                icon,
                                color: state.hover
                                    ? AppColors.whiteColor
                                    : AppColors.blackColor,
                              ).paddingOnly(right: 12)
                      ],
                    ),
            ).paddingOnly(
                top: 4,
                bottom: 4,
                left: 12),
          ),
        );
      }),
    );
  }
}
