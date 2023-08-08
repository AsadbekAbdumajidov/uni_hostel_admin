import 'package:flutter/widgets.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/mobile/user_information_mobile.dart';

import '../../../../../core/utils/service_link.dart';

class ItemListMobile extends StatelessWidget {
  const ItemListMobile({super.key, this.response, this.file});
  final StudentInfoResponse? response;
  final String? file;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userInformationMobile(
          title: AppStrings.strPassportSeries,
          subTitle: response?.passportSeries ?? "-",
        ),
        userInformationMobile(
          title: AppStrings.strPhoneNumber,
          subTitle: response?.phoneNumber ?? "-",
        ),
        userInformationMobile(
          title: AppStrings.strJSH,
          subTitle: response?.jshir ?? "-",
        ),
        userInformationMobile(
          title: AppStrings.strRegion,
          subTitle: response?.region ?? "-",
        ),
        userInformationMobile(
          title: AppStrings.strDistrict,
          subTitle: response?.district ?? "-",
        ),
        userInformationMobile(
          title: AppStrings.strStreetAndHouseNumber,
          subTitle: response?.neighborhood ?? "-",
        ),
        userInformationMobile(
          title: AppStrings.strFaculty,
          subTitle: response?.faculty ?? "-",
        ),
        userInformationMobile(
          title: AppStrings.strCourse,
          subTitle: response?.course ?? "-",
        ),
        userInformationMobile(
          title: AppStrings.strGroup,
          subTitle: response?.group ?? "-",
        ),
        file == null
            ? SizedBox.shrink()
            : userInformationMobile(
                onTap: () {
                  ServiceUrl.launchInBrow(file ?? "-");
                },
                title: AppStrings.strUploadedFile,
                subTitle: file ?? "-",
              ),
      ],
    );
  }
}
