import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:get/utils.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/core/widget/error_img_profile.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
import 'package:uni_hostel_admin/presentation/components/flush_bars.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/admin_edit/admin_edit_cubit.dart';
import 'package:uni_hostel_admin/presentation/cubit/admins/admins_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/admins/widget/mobile_form_fields.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/admins/widget/web_form_fields.dart';
import '../../../../../core/themes/app_text.dart';

class EditExpantionItem extends StatefulWidget {
  EditExpantionItem({super.key, this.response, required this.imageBakgColour});
  final ProfileResponse? response;
  final Color imageBakgColour;
  @override
  State<EditExpantionItem> createState() => _EditExpantionItemState();
}

class _EditExpantionItemState extends State<EditExpantionItem> {
  final formGlobalKey = GlobalKey<FormState>();
  final controllerFN = TextEditingController();
  final controllerLN = TextEditingController();
  final controllerUN = TextEditingController();
  final controllerR = TextEditingController();
  final controllerTP = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double rSize = ResponsiveWidget.isMobileLarge(context) ? 140 : 200;
    context.read<AdminEditCubit>().getType(widget.response?.type);
    controllerFN.text = widget.response?.firstName ?? "";
    controllerLN.text = widget.response?.lastName ?? "";
    controllerUN.text = widget.response?.username ?? "";
    controllerR.text = widget.response?.region ?? "";
    controllerTP.text = widget.response?.type ?? "";
    return BlocBuilder<AdminEditCubit, AdminEditState>(
      builder: (context, state) {
        var bloc = context.read<AdminEditCubit>();

        return Container(
          width: context.w,
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveWidget.isMobile(context) ? 10 : 16),
          child: Form(
            key: formGlobalKey,
            child: Column(
              children: [
                NetworkImageWidget(
                  isEdit: true,
                  radius: 80,
                  size: 80,
                  img: widget.response?.image ?? "",
                  onTap: () async {
                    await bloc.pickFile(
                      id: widget.response?.id ?? 0,
                      firstName: controllerFN.text,
                      lastName: controllerLN.text,
                      userName: controllerUN.text,
                      region: controllerR.text,
                    );
                    context.read<AdminsCubit>().getAdmins(false);
                    debugPrint("AAAA => ${state.pickedImg?.bytes}");
                  },
                  backgroundColor: widget.imageBakgColour,
                  lineColour: widget.response?.image == null
                      ? AppColors.primaryColor
                      : AppColors.whiteColor,
                ).paddingOnly(bottom: 30, top: 16),
                Column(
                  children: [
                    ResponsiveWidget.isMobile(context)
                        ? MobileFormFields(
                            type: state.type ?? controllerTP.text,
                            controllerR: controllerR,
                            controllerFN: controllerFN,
                            controllerLN: controllerLN,
                            controllerUN: controllerUN,
                            onchangeT: (v) => bloc.getType(v),
                          )
                        : WebFormFields(
                            type: state.type ?? controllerTP.text,
                            controllerR: controllerR,
                            controllerFN: controllerFN,
                            controllerLN: controllerLN,
                            controllerUN: controllerUN,
                            onchangeT: (v) => bloc.getType(v),
                          ),
                    Divider(
                      height: 1,
                      color: AppColors.bodyTextColor.withOpacity(0.6),
                    ).paddingOnly(top: 20, bottom: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomOutlineButton(
                          width: rSize,
                          primaryColour: AppColors.redColour,
                          ounLineColour: AppColors.redColour,
                          text: AppStrings.strDelete,
                          isLoading: state.status == Status.OTHER,
                          onTap: () async {
                            await bloc.deleteAdmin(
                                id: widget.response?.id ?? 0);
                            await context.read<AdminsCubit>().getAdmins(false);
                            showErrorMessage(
                                context, AppStrings.strAdminDeletedSuccesfully);
                          },
                        ),
                        SizedBox(width: 14),
                        CustomOutlineButton(
                          width: rSize,
                          isLoading: state.status == Status.LOADING,
                          text: AppStrings.strSave,
                          onTap: () async {
                            if (formGlobalKey.currentState!.validate()) {
                              await bloc.editAdmin(
                                id: widget.response?.id ?? 0,
                                firstName: controllerFN.text,
                                lastName: controllerLN.text,
                                userName: controllerUN.text,
                                region: controllerR.text,
                              );
                              await context.read<AdminsCubit>().getAdmins();
                              showMessage(
                                  context, AppStrings.strAdminEditSuccesfully);
                            }
                          },
                        )
                      ],
                    ).paddingOnly(bottom: 20)
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
