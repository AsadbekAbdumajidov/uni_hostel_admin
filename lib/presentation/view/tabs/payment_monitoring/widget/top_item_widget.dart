import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class TopItemWithoutSearchWidget extends StatelessWidget {
  const TopItemWithoutSearchWidget(
      {super.key,  this.title,  this.count});
  final String? title;
  final int? count;

  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveWidget.isMobileLarge(context) ? 22 : 24;
    return Expanded(
      flex: 6,
      child: Row(
        children: [
          Text(
            "$title ",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontSize: textSize),
          ),
          Text(
            (count == 0 || count == null) ? "" : "$count",
            style: Theme.of(context).textTheme.titleLarge,
          ).paddingOnly(top: 4),
        ],
      ).paddingOnly(top: 10, left: 10),
    );
  }
}
