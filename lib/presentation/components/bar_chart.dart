import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';

class BarChartSample2 extends StatefulWidget {
  BarChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Tashkent', 12),
      _ChartData('Fargʻona', 15),
      _ChartData('Samarqand', 30),
      _ChartData("Andijan", 6.4),
      _ChartData('Buxoro ', 14),
      _ChartData('Jizzax', 12),
      _ChartData('Xorazm', 15),
      _ChartData('Namangan', 30),
      _ChartData('Navoiy', 6.4),
      _ChartData('Qashqadaryo', 14),
      _ChartData('Qoraqalpog', 6.4),
      _ChartData('Sirdaryo', 14),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4), topRight: Radius.circular(50))),
      child: SfCartesianChart(
          primaryXAxis: CategoryAxis(
              borderColor: AppColors.primaryColor,
              axisBorderType: AxisBorderType.rectangle,
              labelStyle: Theme.of(context).textTheme.displaySmall),
          primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
          tooltipBehavior: _tooltip,
          series: <ChartSeries<_ChartData, String>>[
            ColumnSeries<_ChartData, String>(
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                name: AppStrings.strStudents,
                color: Color.fromRGBO(8, 142, 255, 1))
          ]),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
