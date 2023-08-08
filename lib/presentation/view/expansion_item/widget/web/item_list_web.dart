import 'package:flutter/widgets.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/service_link.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
import 'package:uni_hostel_admin/presentation/view/expansion_item/widget/web/user_information_web.dart';

class ItemListWeb extends StatelessWidget {
  const ItemListWeb({super.key, required this.response, this.file});
  final StudentInfoResponse? response;
  final String? file;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserInformationWeb(
          title: AppStrings.strPassportSeries,
          subTitle: response?.passportSeries ?? "-",
          title2: AppStrings.strPhoneNumber,
          subTitle2: response?.phoneNumber ?? "-",
        ),
        UserInformationWeb(
          title: AppStrings.strStreetAndHouseNumber,
          subTitle: response?.neighborhood ?? "-",
          title2: AppStrings.strFaculty,
          subTitle2: response?.faculty ?? "-",
        ),
        UserInformationWeb(
          title: AppStrings.strRegion,
          subTitle: response?.region ?? "-",
          title2: AppStrings.strDistrict,
          subTitle2: response?.district ?? "-",
        ),
        UserInformationWeb(
          title: AppStrings.strCourse,
          subTitle: response?.course ?? "-",
          title2: AppStrings.strJSH,
          subTitle2: response?.jshir ?? "-",
        ),
        
       
        UserInformationWeb(
          title: AppStrings.strGroup,
          subTitle: response?.group ?? "-",
          title2: AppStrings.strUploadedFile,
          subTitle2: file ?? "",
          onTap: () {
            ServiceUrl.launchInBrow(file ?? "-");
          },
        ),
      ],
    );
  }
}
