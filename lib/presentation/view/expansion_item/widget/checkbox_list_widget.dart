import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/cubit/selected_order/selected_order_cubit.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/checkbox_item_widget.dart';

class CheckboxListWidget extends StatelessWidget {
  const CheckboxListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedOrderCubit, SelectedOrderState>(
        builder: (context, state) {
      return Row(
        children: [
          Expanded(
            child: Column(
              children: [
                CheckboxItemWidget(
                  onChange: (v) =>
                      context.read<SelectedOrderCubit>().checkBox(1),
                  title: AppStrings.strIronNotebook,
                  value: state.ironNotebook,
                ),
                SizedBox(width: 20),
                CheckboxItemWidget(
                  onChange: (v) =>
                      context.read<SelectedOrderCubit>().checkBox(2),
                  title: AppStrings.strWomenNotebook,
                  value: state.womensBook,
                ),
                CheckboxItemWidget(
                  onChange: (v) =>
                      context.read<SelectedOrderCubit>().checkBox(3),
                  title: AppStrings.strYouthNotebook,
                  value: state.youthsNotebook,
                ),
                SizedBox(width: 20),
                CheckboxItemWidget(
                  onChange: (v) =>
                      context.read<SelectedOrderCubit>().checkBox(4),
                  title: AppStrings.strFosterCareHome,
                  value: state.fosterHome,
                ),
                SizedBox(width: 20),
                CheckboxItemWidget(
                  onChange: (v) =>
                      context.read<SelectedOrderCubit>().checkBox(9),
                  title: AppStrings.strHasManyChildrenFamily,
                  value: state.hasManyChildrenFamily,
                ),
                ResponsiveWidget.isMobile(context)
                    ? Column(
                        children: [
                          CheckboxItemWidget(
                            onChange: (v) =>
                                context.read<SelectedOrderCubit>().checkBox(5),
                            title: AppStrings.strParentsDead,
                            value: state.noBreadWinner,
                          ),
                          SizedBox(width: 20),
                          CheckboxItemWidget(
                            onChange: (v) =>
                                context.read<SelectedOrderCubit>().checkBox(6),
                            title: AppStrings.strOneParentsDead,
                            value: state.oneParentsIsDead,
                          ),
                          CheckboxItemWidget(
                            onChange: (v) =>
                                context.read<SelectedOrderCubit>().checkBox(7),
                            title: AppStrings.strDisabledGroup,
                            value: state.disabled,
                          ),
                          SizedBox(width: 20),
                          CheckboxItemWidget(
                            onChange: (v) =>
                                context.read<SelectedOrderCubit>().checkBox(8),
                            title: AppStrings.strGiftedStudent,
                            value: state.giftedStudent,
                          ),
                        ],
                      )
                    : SizedBox.shrink()
              ],
            ),
          ),
          ResponsiveWidget.isMobile(context)
              ? SizedBox.shrink()
              : Expanded(
                  child: Column(
                    children: [
                      CheckboxItemWidget(
                        onChange: (v) =>
                            context.read<SelectedOrderCubit>().checkBox(5),
                        title: AppStrings.strParentsDead,
                        value: state.noBreadWinner,
                      ),
                      SizedBox(width: 20),
                      CheckboxItemWidget(
                        onChange: (v) =>
                            context.read<SelectedOrderCubit>().checkBox(6),
                        title: AppStrings.strOneParentsDead,
                        value: state.oneParentsIsDead,
                      ),
                      CheckboxItemWidget(
                        onChange: (v) =>
                            context.read<SelectedOrderCubit>().checkBox(7),
                        title: AppStrings.strDisabledGroup,
                        value: state.disabled,
                      ),
                      SizedBox(width: 20),
                      CheckboxItemWidget(
                        onChange: (v) =>
                            context.read<SelectedOrderCubit>().checkBox(8),
                        title: AppStrings.strGiftedStudent,
                        value: state.giftedStudent,
                      ),
                    ],
                  ),
                ),
        ],
      );
    });
  }
}
