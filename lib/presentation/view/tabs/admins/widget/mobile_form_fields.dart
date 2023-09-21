import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/presentation/components/drobdown_widget.dart';
import 'package:uni_hostel_admin/presentation/components/text_item_widget.dart';

class MobileFormFields extends StatelessWidget {
  const MobileFormFields({
    super.key,
    required this.controllerFN,
    required this.controllerLN,
    required this.controllerUN,
    required this.controllerR,
    required this.onchangeT,
    required this.type, this.style,
  });
  final TextEditingController controllerFN;
  final TextEditingController controllerLN;
  final TextEditingController controllerUN;
  final TextEditingController controllerR;
  final String type;
  final TextStyle? style;


  final Function(dynamic v) onchangeT;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextItemWidget(
              style: style,
              flex: 5,
              hintText: AppStrings.strFirstName,
              textEditingController: controllerFN,
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
              flex: 5,style: style,
              hintText: AppStrings.strLastName,
              textEditingController: controllerLN,
            ),
          ],
        ).paddingSymmetric(vertical: 20),
        Row(
          children: [
            TextItemWidget(
              flex: 5,style: style,
              hintText: AppStrings.strUser,
              textEditingController: controllerUN,
            ),
          ],
        ),
        Row(
          children: [
            TextItemWidget(
                flex: 5,style: style,
                hintText: AppStrings.strRegion,
                textEditingController: controllerR),
          ],
        ).paddingSymmetric(vertical: 20),
         Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.strType,
                    style:style?? Theme.of(context).textTheme.titleMedium),
                SizedBox(height: 10),
                DropDownWidget(
                  buttonWidth: 200,
                  drobDownWidth: 300,
                  index: type,
                  list: typeList,
                  onChanged: onchangeT,
                  isEmptyText: AppStrings.strType,
                ),
                SizedBox(width: 20),
              ],
            )
          ],
        ),
      ],
    ).paddingOnly(left: 10, right: 30);
  }
}
