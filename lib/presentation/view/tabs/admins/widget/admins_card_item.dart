import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/admins/widget/edit_expansion_item.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/widget/card_item_widget.dart';

class AdminsCardItem extends StatelessWidget {
  const AdminsCardItem({super.key, required this.isEven, this.user});
  final bool isEven;
  final ProfileResponse? user;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isEven ? AppColors.backgroundColour : AppColors.transparent,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(7),
          bottomRight: Radius.circular(7),
        ),
      ),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.only(right: 12),
          title: CardItemWidget(
            userName: "${user?.firstName ?? "-"} ${user?.lastName ?? "-"}",
            img: user?.image ?? "",
            date: user?.username ?? "-",
            time: user?.type ?? "-",
            isIcon: false,
          ).paddingAll(4),
          children: [
            EditExpantionItem(response: user)
          ],
        ),
      ),
    );
  }
}
