import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/widget/error_img_profile.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/profile/profile_cubit.dart';

class StatisticsAppBar extends StatelessWidget {
  const StatisticsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 10.0,
        sigmaY: 10.0,
      ),
      child: Container(
        width: context.w,
        padding: EdgeInsets.only(top: 10),
        color: AppColors.primaryColor.withOpacity(.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                !ResponsiveWidget.isTablet(context)
                    ? SizedBox.shrink()
                    : Builder(
                        builder: (context) => GestureDetector(
                          child: Icon(Icons.menu,
                              color: AppColors.whiteColor, size: 30),
                          onTap: () => Scaffold.of(context).openDrawer(),
                        ).paddingOnly(top: 8, left: 6),
                      ),
                SizedBox(width: 10),
                Text(
                    "TOSHKENT TIBBIYOT AKADEMIYASI TALABALAR \nTURAR JOYI STATISTIKASI",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: AppColors.whiteColor)),
              ],
            ),
            BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
              return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NetworkImageWidget(
                      onTap: () => Scaffold.of(context).openEndDrawer(),
                      size: 45,
                      img: state.response?.image ?? "",
                    ).paddingSymmetric(horizontal: 12),
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
                                            color: AppColors.whiteColor)),
                                SizedBox(height: 4),
                                Text("@${state.response?.username}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: AppColors.whiteColor
                                                .withOpacity(0.8),
                                            fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                  ]);
            })
          ],
        ).paddingAll(12),
      ),
    ));
  }
}
