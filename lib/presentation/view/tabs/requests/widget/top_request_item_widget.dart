import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

import '../../../../components/drobdown_widget.dart';

class TopRequestItemWidget extends StatelessWidget {
  const TopRequestItemWidget(
      {super.key,
      this.index,
      required this.title,
      required this.list,
      required this.onChanged});
  final String? index;
  final String title;

  final List<String> list;
  final Function(dynamic v) onChanged;
  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 22 : 24;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontSize: textSize),
        ),
        DropDownWidget(
          index: index ?? "",
          list: list,
          onChanged: onChanged,
          isEmptyText: AppStrings.strMaritals,
        ),
      ],
    ).paddingOnly(bottom: 40);
  }
}
