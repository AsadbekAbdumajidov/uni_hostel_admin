import 'package:flutter/widgets.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/service_link.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/requests/widget/expansion_item2.dart';

class ItemWidgetList2 extends StatelessWidget {
  const ItemWidgetList2({super.key, required this.response, this.file});
  final StudentInfoResponse? response;
  final String? file;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionItemWidget2(
          title: AppStrings.strPassportSeries,
          subTitle: response?.passportSeries ?? "-",
          title2: AppStrings.strPhoneNumber,
          subTitle2: response?.phoneNumber ?? "-",
        ),
        ExpansionItemWidget2(
          title: AppStrings.strStreetAndHouseNumber,
          subTitle: response?.neighborhood ?? "-",
          title2: AppStrings.strFaculty,
          subTitle2: response?.faculty ?? "-",
        ),
        ExpansionItemWidget2(
          title: AppStrings.strRegion,
          subTitle: response?.region ?? "-",
          title2: AppStrings.strDistrict,
          subTitle2: response?.district ?? "-",
        ),
        ExpansionItemWidget2(
          title: AppStrings.strCourse,
          subTitle: response?.course ?? "-",
          title2: AppStrings.strJSH,
          subTitle2: response?.jshir ?? "-",
        ),
        
       
        ExpansionItemWidget2(
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
