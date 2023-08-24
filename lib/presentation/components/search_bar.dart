import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_icons.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/cubit/on_hover/on_hover_cubit.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget(
      {Key? key,
      this.onTap,
      this.focus,
      this.onCancel,
      this.onChange,
      required this.controller,
      this.autoFocus,
      this.readOnly})
      : super(key: key);

  final VoidCallback? onTap;
  final FocusNode? focus;
  final VoidCallback? onCancel;
  final Function(String word)? onChange;
  final TextEditingController controller;
  final bool? autoFocus;
  final bool? readOnly;

  OutlineInputBorder inputBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(color: Colors.white, width: 0));

  TextStyle cancelTextStyle() => const TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: Color(0xFFFFFFFF),
        fontSize: 14,
      );

  @override
  Widget build(BuildContext context) {
    debugPrint(controller.text);
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 14, 16, 8),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: TextField(
                
                focusNode: focus,
                onTap: onTap,
                textInputAction: TextInputAction.done,
                controller: controller,
                readOnly: readOnly ?? false,
                autofocus: autoFocus ?? false,
                onChanged: onChange,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: AppColors.bodyTextColor),
                decoration: InputDecoration(
                  hintStyle: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: AppColors.bodyTextColor, fontSize: 15),
                  hintText: "${AppStrings.strSearch}...",
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: SvgPicture.asset(AppIcons.iconSearch,height: 22),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF6F8FA),
                  border: inputBorder(),
                  focusedBorder: inputBorder(),
                  enabledBorder: inputBorder(),
                ),
              ),
            ),
            SizedBox(width: 10),
            BlocProvider(
              create: (context) => OnHoverCubit(),
              child: BlocBuilder<OnHoverCubit, OnHoverState>(
                  builder: (context, state) {
                return InkWell(
                  onHover: (v) => context.read<OnHoverCubit>().getHover(v),
                  onTap: onCancel,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: state.hover
                          ? AppColors.primaryColor.withOpacity(0.9)
                          : const Color(0xFFF6F8FA),
                    ),
                    child: SvgPicture.asset(
                      AppIcons.iconClose,
                      colorFilter: ColorFilter.mode(
                          state.hover
                              ? AppColors.whiteColor
                              : AppColors.bodyTextColor.withOpacity(0.4),
                          BlendMode.srcIn),
                      height: 16,
                      width: 16,
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
