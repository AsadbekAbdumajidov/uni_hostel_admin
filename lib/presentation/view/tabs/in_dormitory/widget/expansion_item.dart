import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/extension/for_context.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/data/models/in_dormitory/in_dormitory_response.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/mobile/user_information_mobile.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/web/user_information_web.dart';

class ExpansionItemInDormitoryWidget extends StatelessWidget {
  const ExpansionItemInDormitoryWidget({super.key, required this.response});
  final InDormitoryUser? response;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.w,
        padding: EdgeInsets.all(16),
        child: ResponsiveWidget.isMobile(context)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserInformationMobile(
                    title: AppStrings.strSN,
                    subTitle: response?.fullName ?? "-",
                  ),
                  UserInformationMobile(
                    title: AppStrings.strTTJ,
                    subTitle: response?.dormitory ?? "-",
                  ),
                  UserInformationMobile(
                    title: AppStrings.strFaculty,
                    subTitle: response?.facultyModel ?? "-",
                  ),
                  UserInformationMobile(
                    title: AppStrings.strCourse,
                    subTitle: response?.course ?? "-",
                  ),
                  UserInformationMobile(
                    title: AppStrings.strFloor,
                    subTitle: response?.floor ?? "-",
                  ),
                  UserInformationMobile(
                    title: AppStrings.strRoom,
                    subTitle: response?.room ?? "-",
                  ),
                ],
              )
            : Column(
                children: [
                  UserInformationWeb(
                    title: AppStrings.strSN,
                    subTitle: response?.fullName ?? "-",
                    title2: AppStrings.strTTJ,
                    subTitle2: response?.dormitory ?? "-",
                  ),
                  UserInformationWeb(
                    title: AppStrings.strFaculty,
                    subTitle: response?.facultyModel ?? "-",
                    title2: AppStrings.strCourse,
                    subTitle2: response?.course ?? "-",
                  ),
                  UserInformationWeb(
                    title: AppStrings.strFloor,
                    subTitle: response?.floor ?? "-",
                    title2: AppStrings.strRoom,
                    subTitle2: response?.room ?? "-",
                  ),
                ],
              ));
  }
}
