import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/checkbox_item_widget.dart';

class ExpansionFilterWidget extends StatelessWidget {
  const ExpansionFilterWidget({super.key, required this.onTap, this.title, required this.list});
  final Function() onTap;
  final String? title;
  final List list;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.all(0),
      title: Text(
        title ?? AppStrings.strCourse,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: onTap,
              child: CheckboxItemRowWidget(
                title: list[index],
                value: title == list[index],
              ),
            ).paddingOnly(bottom: 8);
          },
          itemCount: list.length,
        )
      ],
    );
  }
}
