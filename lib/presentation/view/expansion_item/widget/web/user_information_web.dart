import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/mobile/user_information_mobile.dart';

class UserInformationWeb extends StatelessWidget {
  const UserInformationWeb({
    super.key,
    required this.title,
    required this.subTitle,
    required this.title2,
    required this.subTitle2,
    this.onTap,
  });
  final String title;
  final String subTitle;
  final String title2;
  final String? subTitle2;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: UserInformationMobile(title: title, subTitle: subTitle),
      ),
      SizedBox(width: subTitle2 == "" ? 0 : 12),
      subTitle2 == ""
          ? SizedBox.shrink()
          : Expanded(
              child: UserInformationMobile(
                  onTap: onTap, title: title2, subTitle: subTitle2 ?? ""),
            )
    ]).paddingOnly(bottom: 14);
  }
}
