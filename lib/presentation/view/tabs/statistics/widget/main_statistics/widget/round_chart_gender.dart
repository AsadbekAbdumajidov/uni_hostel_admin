import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/data/models/statistics/admin_statistics/admin_statistics_response.dart';
import 'package:uni_hostel_admin/presentation/components/indicator_widget.dart';

class RoundChartGenderWidget extends StatefulWidget {
  const RoundChartGenderWidget({super.key, this.response});
  final MainStatisticsResponse? response;
  @override
  State<RoundChartGenderWidget> createState() =>
      _RoundChartStudentWidgetState();
}

class _RoundChartStudentWidgetState extends State<RoundChartGenderWidget> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 0.8,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    setState(() {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        touchedIndex = -1;
                        return;
                      }
                      touchedIndex =
                          pieTouchResponse.touchedSection!.touchedSectionIndex;
                    });
                  },
                ),
                borderData: FlBorderData(show: false),
                sectionsSpace: 0,
                centerSpaceRadius: 50,
                sections: showingSections(),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(
                color: AppColors.greenColour,
                text: AppStrings.strMen,
                isSquare: true,
              ),
              SizedBox(height: 4),
              Indicator(
                color: AppColors.amberColor,
                text: AppStrings.strWoMen,
                isSquare: true,
              ),
              SizedBox(height: 4),
            ],
          ),
          const SizedBox(width: 28),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final all = widget.response?.all ?? 0;
      final male = widget.response?.male ?? 0;
      final female = widget.response?.female ?? 0;
      final malePer = ((male * 100) / all);
      final femalePer = ((female * 100) / all);
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: AppColors.blackColor, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.greenColour,
            value: malePer,
            title: '${malePer.toStringAsFixed(1)}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.amberColor,
            value: femalePer,
            title: '${femalePer.toStringAsFixed(1)}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
              shadows: shadows,
            ),
          );

        default:
          throw Error();
      }
    });
  }
}
