import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/widget/error_img_profile.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/components/search_bar.dart';
import 'package:uni_hostel_admin/presentation/cubit/profile/profile_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/payment_monitoring/widget/top_item_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.onchange,
    this.onCancel,
    this.textEditingController,
    required this.isSearch,
    this.text,
    this.index, this.widget,
  });
  final Function(dynamic v)? onchange;
  final Function()? onCancel;
  final bool isSearch;
  final String? text;
  final Widget? widget;

  final int? index;

  final TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          !ResponsiveWidget.isTablet(context)
              ? SizedBox.shrink()
              : Builder(
                  builder: (context) => GestureDetector(
                    child: Icon(Icons.menu,
                        color: AppColors.primaryColor, size: 30),
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ).paddingOnly(
                      top: 8,
                      left: ResponsiveWidget.isMobileLarge(context) ? 6 : 16),
                ),
          SizedBox(width: 10),
          isSearch
              ? Expanded(
                  flex: 6,
                  child: SearchBarWidget(
                    controller:
                        textEditingController ?? TextEditingController(),
                    onCancel: onCancel,
                    autoFocus: true,
                    onChange: onchange,
                  ))
              : TopItemWithoutSearchWidget(title: text, count: index),
          
          
          Expanded(
              flex: ResponsiveWidget.isTablet(context)
                  ? 0
                  : ResponsiveWidget.isDesktop(context)
                      ? 4
                      : 2,
              child: SizedBox.shrink()),
          widget ?? SizedBox.shrink(),
          BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
            return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NetworkImageWidget(
                    onTap: () => Scaffold.of(context).openEndDrawer(),
                    size: 45,
                    img: state.response?.image ?? "",
                  ).paddingOnly(right: 12),
                  ResponsiveWidget.isTablet(context)
                      ? const SizedBox.shrink()
                      : Container(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "${state.response?.firstName} ${state.response?.lastName}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.w500,
                                      )),
                              SizedBox(height: 4),
                              Text("@${state.response?.username}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                          color: AppColors.bodyTextColor,
                                          fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                ]);
          })
        ],
      ).paddingAll(10),
    );
  }
}
