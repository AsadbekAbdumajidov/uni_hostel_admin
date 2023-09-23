import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/data/models/statistics/student_statistics/student_statistics_response.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class BarChartSample2Student extends StatefulWidget {
  BarChartSample2Student({super.key, this.response});
  final StudentStatisticsResponse? response;
  @override
  State<StatefulWidget> createState() => BarChartSample2StudentState();
}

class BarChartSample2StudentState extends State<BarChartSample2Student> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData("1 - ${AppStrings.strCourse}",
          widget.response!.kurs1?.toDouble() ?? 0.0),
      _ChartData("2 - ${AppStrings.strCourse}",
          widget.response!.kurs2?.toDouble() ?? 0.0),
      _ChartData("3 - ${AppStrings.strCourse}",
          widget.response!.kurs3?.toDouble() ?? 0.0),
      _ChartData("4 - ${AppStrings.strCourse}",
          widget.response!.kurs4?.toDouble() ?? 0.0),
      _ChartData("5 - ${AppStrings.strCourse}",
          widget.response!.kurs5?.toDouble() ?? 0.0),
      _ChartData("6 - ${AppStrings.strCourse}",
          widget.response!.kurs6?.toDouble() ?? 0.0),
      _ChartData("7 - ${AppStrings.strCourse}",
          widget.response!.kurs7?.toDouble() ?? 0.0),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
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
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
