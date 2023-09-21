import 'dart:typed_data';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/constants/constants.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/core/widget/error_img_profile.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
import 'package:uni_hostel_admin/presentation/components/flush_bars.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/admins/admins_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/on_hover/on_hover_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/admins/widget/mobile_form_fields.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/admins/widget/web_form_fields.dart';

class AddAdminAlertDialog extends StatelessWidget {
  AddAdminAlertDialog({super.key, this.response});
  final ProfileResponse? response;
  final formGlobalKey = GlobalKey<FormState>();
  final controllerFN = TextEditingController();
  final controllerLN = TextEditingController();
  final controllerUN = TextEditingController();
  final controllerR = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double rSize = ResponsiveWidget.isMobileLarge(context) ? 140 : 200;

    double height = ResponsiveWidget.isMobileLarge(context)
        ? desktopSize.toDouble() - 300
        : desktopSize.toDouble() / 2;

    return BlocBuilder<AdminsCubit, AdminsState>(builder: (context, state) {
      var bloc = context.read<AdminsCubit>();
      return FadeInUp(
          duration: Duration(milliseconds: 300),
          child: Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              height: height,
              width: desktopSize.toDouble(),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12)),
              child: SingleChildScrollView(
                child: Form(
                  key: formGlobalKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            BlocProvider(
                              create: (context) => OnHoverCubit(),
                              child: BlocBuilder<OnHoverCubit, OnHoverState>(
                                  builder: (context, state) {
                                return Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                          onHover: (v) => context
                                              .read<OnHoverCubit>()
                                              .getHover(v),
                                          onTap: () => Navigator.pop(context),
                                          child: Icon(
                                            CupertinoIcons.xmark,
                                            color: state.hover
                                                ? AppColors.darkPrimaryColour
                                                : AppColors.bodyTextColor,
                                          )),
                                    ]);
                              }),
                            ),
                            MemoryWebImageWidget(
                              isEdit: true,
                              radius: 100,
                              size: 100,
                              img: state.pickedImg?.bytes ?? Uint8List(0),
                              onTap: () async => await bloc.pickFile(),
                              backgroundColor: AppColors.whiteColor,
                              lineColour: state.pickedImg?.bytes == null
                                  ? AppColors.primaryColor
                                  : AppColors.whiteColor,
                            ).paddingOnly(bottom: 14),
                            Column(
                              children: [
                                ResponsiveWidget.isMobileLarge(context)
                                    ? MobileFormFields(
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                        type: state.type,
                                        controllerR: controllerR,
                                        controllerFN: controllerFN,
                                        controllerLN: controllerLN,
                                        controllerUN: controllerUN,
                                        onchangeT: (v) => bloc.getType(v),
                                      )
                                    : WebFormFields(
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                        type: state.type,
                                        controllerR: controllerR,
                                        controllerFN: controllerFN,
                                        controllerLN: controllerLN,
                                        controllerUN: controllerUN,
                                        onchangeT: (v) => bloc.getType(v),
                                      ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Divider(
                              height: 1,
                              color: AppColors.bodyTextColor.withOpacity(0.6),
                            ).paddingOnly(top: 20, bottom: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomOutlineButton(
                                  width: rSize,
                                  isLoading: state.status == Status.LOADING,
                                  text: AppStrings.strSave,
                                  onTap: () async {
                                    if (formGlobalKey.currentState!
                                        .validate()) {
                                      if (state.type != "") {
                                        await bloc.addAdmin(
                                          firstName: controllerFN.text,
                                          lastName: controllerLN.text,
                                          userName: controllerUN.text,
                                          region: controllerUN.text,
                                        );
                                        Navigator.pop(context);
                                        await context
                                            .read<AdminsCubit>()
                                            .getAdmins();

                                        showMessage(context,
                                            AppStrings.strAdminAddSuccesfully);
                                      } else {
                                        showErrorMessage(context,
                                            AppStrings.strAdminTypeEmpty);
                                      }
                                    }
                                  },
                                )
                              ],
                            ).paddingOnly(bottom: 20, left: 10, right: 10)
                          ],
                        ).paddingOnly(top: 40)
                      ]),
                ),
              ),
            ),
          ));
    });
  }
}
