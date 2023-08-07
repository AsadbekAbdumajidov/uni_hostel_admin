import 'package:flutter/widgets.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/requests/widget/expansion_item.dart';

import '../../../../../core/utils/service_link.dart';

class ItemWidgetList extends StatelessWidget {
  const ItemWidgetList({super.key, this.response, this.file});
  final StudentInfoResponse? response;
  final String? file;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionItemWidget(
          title: AppStrings.strPassportSeries,
          subTitle: response?.passportSeries ?? "-",
        ),
        ExpansionItemWidget(
          title: AppStrings.strPhoneNumber,
          subTitle: response?.phoneNumber ?? "-",
        ),
        ExpansionItemWidget(
          title: AppStrings.strJSH,
          subTitle: response?.jshir ?? "-",
        ),
        ExpansionItemWidget(
          title: AppStrings.strRegion,
          subTitle: response?.region ?? "-",
        ),
        ExpansionItemWidget(
          title: AppStrings.strDistrict,
          subTitle: response?.district ?? "-",
        ),
        ExpansionItemWidget(
          title: AppStrings.strStreetAndHouseNumber,
          subTitle: response?.neighborhood ?? "-",
        ),
        ExpansionItemWidget(
          title: AppStrings.strFaculty,
          subTitle: response?.faculty ?? "-",
        ),
        ExpansionItemWidget(
          title: AppStrings.strCourse,
          subTitle: response?.course ?? "-",
        ),
        ExpansionItemWidget(
          title: AppStrings.strGroup,
          subTitle: response?.group ?? "-",
        ),
        file == null
            ? SizedBox.shrink()
            : ExpansionItemWidget(
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
