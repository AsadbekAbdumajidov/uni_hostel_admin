import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_images.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/di.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/selected_order/selected_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/mobile/user_information_mobile.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/requests/widget/checkbox_item_widget.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/down_button.dart';
import 'package:uni_hostel_admin/presentation/view/status_alert_dialog/edit_status_alert_dialog.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/mobile/item_list_mobile.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/web/item_list_web.dart';

class ExpansionItemWidget extends StatelessWidget {
  const ExpansionItemWidget({super.key, required this.id, this.index});
  final int id;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectedOrderCubit>(
      create: (context) => inject<SelectedOrderCubit>()..getSelectedOrder(id),
      child: BlocBuilder<SelectedOrderCubit, SelectedOrderState>(
          builder: (context, state) {
        if (state.status == Status.LOADING) {
          return Container(height: 200, width: 200, child: LoadingWidget());
        }
        var response = state.orderResponse?.student;

        return Container(
          width: context.w,
          height: ResponsiveWidget.isMobile(context) ? 400 : 450,
          padding: EdgeInsets.all(16),
          child: ListView(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: ResponsiveWidget.isMobileLarge(context)
                      ? ItemListMobile(
                          response: response,
                          file: state.orderResponse?.referenceFile,
                        )
                      : ItemListWeb(
                          response: response,
                          file: state.orderResponse?.referenceFile,
                        ),
                ),
                Expanded(
                  flex: ResponsiveWidget.isMobile(context) ? 3 : 2,
                  child: CachedNetworkImage(
                    imageUrl: response?.image ?? "",
                    height: 200,
                    fit: BoxFit.contain,
                    errorWidget: (context, error, stackTrace) => Image.asset(
                      AppImages.imgDeafult,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                mainAxisExtent: 20,
              ),
              itemCount: state.trueProperties.length,
              itemBuilder: (BuildContext ctx, index) {
                var response = state.trueProperties[index];
                return CheckboxItemWidget(title: response, value: true);
              },
            ),
            state.orderResponse?.cancelReason == null
                ? SizedBox.shrink()
                : userInformationMobile(
                    title: AppStrings.strChecked,
                    subTitle: state.orderResponse?.cancelReason ?? "-",
                  ),
            index == 0
                ? SizedBox.shrink()
                : Divider(color: AppColors.bodyTextColor.withOpacity(0.2))
                    .paddingOnly(bottom: 6, top: 20),
            index == 0
                ? SizedBox.shrink()
                : DownButtonWidget(
                    onTapRejected: index == 1
                        ? null
                        : () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return EditStatusAlertDialog(
                                    name: response?.fullName ?? "",
                                    id: response?.id ?? 0,
                                    title: AppStrings.strRejectedAd,
                                    reason: AppStrings.strReasonforRejection,
                                  );
                                });
                          },
                    onTapWaiting: index == 2
                        ? null
                        : () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return EditStatusAlertDialog(
                                    name: response?.fullName ?? "",
                                    id: response?.id ?? 0,
                                    title: AppStrings.strWaitingAd,
                                    reason: AppStrings.strQueuingReason,
                                  );
                                });
                          },
                    onTapApproved: index == 3
                        ? null
                        : () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return EditStatusAlertDialog(
                                    name: response?.fullName ?? "",
                                    id: response?.id ?? 0,
                                    title: AppStrings.strApprovedAd,
                                  );
                                });
                          },
                  ),
          ]),
        );
      }),
    );
  }
}
