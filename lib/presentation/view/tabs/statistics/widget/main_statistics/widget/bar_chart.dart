import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:uni_hostel_admin/core/constants/constants.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/data/models/statistics/admin_statistics/admin_statistics_response.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class BarChartSample2 extends StatefulWidget {
  BarChartSample2({super.key, this.response});
  final MainStatisticsResponse? response;
  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData(AppStrings.strIronNotebook,
          widget.response!.ironNotebook?.toDouble() ?? 0.0),
      _ChartData(AppStrings.strWomenNotebook,
          widget.response!.womensBook?.toDouble() ?? 0.0),
      _ChartData(AppStrings.strYouthNotebook,
          widget.response!.youthsNotebook?.toDouble() ?? 0.0),
      _ChartData(AppStrings.strFosterCareHome,
          widget.response!.fosterHome?.toDouble() ?? 0.0),
      _ChartData(AppStrings.strParentsDead,
          widget.response!.noBreadwinner?.toDouble() ?? 0.0),
      _ChartData(AppStrings.strOneParentsDead,
          widget.response!.oneParentsIsDead?.toDouble() ?? 0.0),
      _ChartData(AppStrings.strDisabledGroup,
          widget.response!.disabled?.toDouble() ?? 0.0),
      _ChartData(AppStrings.strGiftedStudent,
          widget.response!.giftedStudent?.toDouble() ?? 0.0),
      _ChartData(AppStrings.strHasManyChildrenFamily,
          widget.response!.hasManyChildrenFamily?.toDouble() ?? 0.0),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 320,
          width: maxWidth + 370,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4), topRight: Radius.circular(50))),
          child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                  borderColor: AppColors.primaryColor,
                  axisBorderType: AxisBorderType.rectangle,
                  labelIntersectAction: AxisLabelIntersectAction.trim,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(
                          fontSize:
                              ResponsiveWidget.isTablet(context) ? 10 : 14,
                          overflow: TextOverflow.ellipsis)),
              primaryYAxis: NumericAxis(minimum: 0, maximum: 400, interval: 50),
              tooltipBehavior: _tooltip,
              series: <ChartSeries<_ChartData, String>>[
                ColumnSeries<_ChartData, String>(
                  dataSource: data,
                  borderRadius: BorderRadius.circular(8),
                  xValueMapper: (_ChartData data, _) => data.x,
                  yValueMapper: (_ChartData data, _) => data.y,
                  name: AppStrings.strRequests,
                  color: AppColors.primaryColor,
                )
              ]),
        ),
      ],
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
