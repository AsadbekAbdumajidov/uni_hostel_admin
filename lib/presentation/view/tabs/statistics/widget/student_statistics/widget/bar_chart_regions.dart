import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:uni_hostel_admin/core/constants/constants.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/data/models/statistics/student_statistics/student_statistics_response.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class BarChartSample2Regions extends StatefulWidget {
  BarChartSample2Regions({super.key, this.response});
  final StudentStatisticsResponse? response;
  @override
  State<StatefulWidget> createState() => BarChartSample2RegionsState();
}

class BarChartSample2RegionsState extends State<BarChartSample2Regions> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData("Toshkent sh",
          widget.response?.regions?.toshkentSh?.toDouble() ?? 0.0),
      _ChartData("Toshkent v",
          widget.response?.regions?.toshkentV?.toDouble() ?? 0.0),
      _ChartData("Navoiy v",
          widget.response?.regions?.navoiyV?.toDouble() ?? 0.0),
      _ChartData("Qashqadaryo v",
          widget.response?.regions?.qashqadaryoV?.toDouble() ?? 0.0),
      _ChartData("Surxondaryo v",
          widget.response?.regions?.surxondaryoV?.toDouble() ?? 0.0),
      _ChartData("Farg‘ona v",
          widget.response?.regions?.fargonaV?.toDouble() ?? 0.0),
      _ChartData("Sirdaryo v",
          widget.response?.regions?.sirdaryoV?.toDouble() ?? 0.0),
      _ChartData("Samarqand v",
          widget.response?.regions?.samarqanV?.toDouble() ?? 0.0),
      _ChartData("Jizzax v",
          widget.response?.regions?.jizzaxV?.toDouble() ?? 0.0),
      _ChartData("Andijon v",
          widget.response?.regions?.andijonV?.toDouble() ?? 0.0),
      _ChartData("Qoraqalpog‘iston res",
          widget.response?.regions?.qashqadaryoV?.toDouble() ?? 0.0),
      _ChartData("Buxoro v",
          widget.response?.regions?.buxoroV?.toDouble() ?? 0.0),
      _ChartData("Xorazm v",
          widget.response?.regions?.xorazmV?.toDouble() ?? 0.0),
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
                  // labelIntersectAction: AxisLabelIntersectAction.trim,
                  labelStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: ResponsiveWidget.isTablet(context) ? 10 : 14,
                      overflow: TextOverflow.ellipsis)),
              primaryYAxis: NumericAxis(minimum: 0, maximum: 3000, interval: 500),
              tooltipBehavior: _tooltip,
              series: <ChartSeries<_ChartData, String>>[
                ColumnSeries<_ChartData, String>(
                  dataSource: data,
                  borderRadius: BorderRadius.circular(8),
                  xValueMapper: (_ChartData data, _) => data.x,
                  yValueMapper: (_ChartData data, _) => data.y,
                  name: AppStrings.strStudents,
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
