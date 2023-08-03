import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/requests/widget/expansion_item.dart';

class ExpansionItemWidget2 extends StatelessWidget {
  const ExpansionItemWidget2(
      {super.key, required this.title, required this.subTitle, required this.title2, required this.subTitle2});
  final String title;
  final String subTitle;
final String title2;
  final String subTitle2;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: ExpansionItemWidget(
            title:title, subTitle: subTitle),
      ),
      Expanded(
        child: ExpansionItemWidget(
            title: title2, subTitle: subTitle2),
      )
    ]).paddingOnly(bottom: 14);
  }
}
