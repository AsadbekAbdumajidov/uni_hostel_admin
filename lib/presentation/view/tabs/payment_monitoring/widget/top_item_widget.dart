import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class TopItemPaymentMonitorWidget extends StatelessWidget {
  const TopItemPaymentMonitorWidget(
      {super.key,
      required this.index,
      required this.title,
      required this.list,
      required this.onChanged});
  final String index;
  final String title;

  final List<String> list;
  final Function(dynamic v) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: ResponsiveWidget.isMobileLarge(context) ? 22 : 24)),
        ),
        // Row(
        //   children: [
        //     DropDownWidget(index: index, list: list, onChanged: onChanged)
        //         .paddingSymmetric(horizontal: 6),
        //     DropDownWidget(index: index, list: list, onChanged: onChanged),
        //   ],
        // ),
      ],
    ).paddingOnly(bottom: 40);
  }
}
