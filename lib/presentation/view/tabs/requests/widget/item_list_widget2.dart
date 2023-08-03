import 'package:flutter/widgets.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/data/models/order/select_order/select_order_response.dart';
import 'package:uni_hostel_admin/presentation/view/tabs/requests/widget/expansion_item2.dart';

class ItemWidgetList2 extends StatelessWidget {
  const ItemWidgetList2({super.key, required this.response});
  final StudentInfoResponse? response;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionItemWidget2(
          title: AppStrings.strPassportSeries,
          subTitle: response?.passportSeries ?? "-",
          title2: AppStrings.strJSH,
          subTitle2: response?.jshir ?? "-",
        ),
        ExpansionItemWidget2(
          title: AppStrings.strRegion,
          subTitle: response?.region ?? "-",
          title2: AppStrings.strDistrict,
          subTitle2: response?.district ?? "-",
        ),
        ExpansionItemWidget2(
          title: AppStrings.strStreetAndHouseNumber,
          subTitle: response?.neighborhood ?? "-",
          title2: AppStrings.strFaculty,
          subTitle2: response?.faculty ?? "-",
        ),
        ExpansionItemWidget2(
          title: AppStrings.strCourse,
          subTitle: response?.course ?? "-",
          title2: AppStrings.strGroup,
          subTitle2: response?.group ?? "-",
        ),
      ],
    );
  }
}
