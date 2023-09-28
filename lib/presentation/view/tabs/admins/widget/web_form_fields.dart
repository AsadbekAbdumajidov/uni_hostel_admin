import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/presentation/components/drobdown_widget.dart';
import 'package:uni_hostel_admin/presentation/components/text_item_widget.dart';

class WebFormFields extends StatelessWidget {
  const WebFormFields({
    super.key,
    required this.controllerFN,
    required this.controllerLN,
    required this.controllerUN,
    required this.controllerR,
    required this.onchangeT,
    required this.type,
    this.style,
    required this.list,
    required this.onChangeFaculty, required this.facultyIndex,
  });
  final TextEditingController controllerFN;
  final TextEditingController controllerLN;
  final TextEditingController controllerUN;
  final TextEditingController controllerR;
  final Function(dynamic v) onChangeFaculty;
  final String type;
  final TextStyle? style;
  final Function(dynamic v) onchangeT;
  final List<String> list;
  final String? facultyIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              style: style,
              hintText: AppStrings.strFirstName,
              textEditingController: controllerFN,
            ),
            SizedBox(width: 20),
            TextItemWidget(
              flex: 5,
              style: style,
              hintText: AppStrings.strLastName,
              textEditingController: controllerLN,
            ),
            Flexible(
              flex: 5,
              child: SizedBox.shrink(),
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 5,
              style: style,
              hintText: AppStrings.strUserName,
              textEditingController: controllerUN,
            ),
            SizedBox(width: 20),
            TextItemWidget(
                flex: 5,
                style: style,
                hintText: AppStrings.strRegion,
                textEditingController: controllerR),
            Flexible(
              flex: 2,
              child: SizedBox.shrink(),
            ),
          ],
        ).paddingSymmetric(vertical: 12),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.strType,
                    style: style ?? Theme.of(context).textTheme.titleMedium),
                SizedBox(height: 10),
                DropDownWidget(
                  buttonWidth: 200,
                  drobDownWidth: 300,
                  index: type,
                  list: typeList,
                  onChanged: onchangeT,
                  isEmptyText: AppStrings.strType,
                ),
                
              ],
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.strFaculty,
                    style: style ?? Theme.of(context).textTheme.titleMedium),
                SizedBox(height: 10),
                DropDownWidget(
                  buttonWidth: 200,
                  drobDownWidth: 300,
                  index: facultyIndex ?? "",
                  list: list,
                  onChanged: onChangeFaculty,
                  isEmptyText: AppStrings.strFaculty,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
