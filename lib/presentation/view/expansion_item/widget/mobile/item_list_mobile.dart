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
        UserInformationMobile(
          title: AppStrings.strPassportSeries,
          subTitle: response?.passportSeries ?? "-",
        ),
        UserInformationMobile(
          title: AppStrings.strPhoneNumber,
          subTitle: response?.phoneNumber ?? "-",
        ),
        UserInformationMobile(
          title: AppStrings.strJSH,
          subTitle: response?.jshir ?? "-",
        ),
        UserInformationMobile(
          title: AppStrings.strRegion,
          subTitle: response?.region ?? "-",
        ),
        UserInformationMobile(
          title: AppStrings.strDistrict,
          subTitle: response?.district ?? "-",
        ),
        UserInformationMobile(
          maxLines: 3,
          title: AppStrings.strStreetAndHouseNumber,
          subTitle: response?.neighborhood ?? "-",
        ),
        UserInformationMobile(
          maxLines: 3,
          title: AppStrings.strFaculty,
          subTitle: response?.faculty ?? "-",
        ),
        UserInformationMobile(
          title: AppStrings.strCourse,
          subTitle: response?.course ?? "-",
        ),
        UserInformationMobile(
          title: AppStrings.strGroup,
          subTitle: response?.group ?? "-",
        ),
        file == null
            ? SizedBox.shrink()
            : UserInformationMobile(
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
