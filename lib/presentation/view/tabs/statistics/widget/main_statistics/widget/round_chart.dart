import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/data/models/statistics/admin_statistics/admin_statistics_response.dart';
import 'package:uni_hostel_admin/presentation/components/indicator_widget.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class RoundChartWidget extends StatefulWidget {
  const RoundChartWidget({super.key, this.response});
  final MainStatisticsResponse? response;
  @override
  State<RoundChartWidget> createState() => _RoundChartWidgetState();
}

class _RoundChartWidgetState extends State<RoundChartWidget> {
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
                centerSpaceRadius: ResponsiveWidget.isMobile(context) ? 50 : 70,
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
                text: AppStrings.strApproved,
                isSquare: true,
              ),
              SizedBox(height: 4),
              // Indicator(
              //   color: AppColors.primaryColor,
              //   text: AppStrings.strRequests,
              //   isSquare: true,
              // ),
              // SizedBox(height: 4),
              Indicator(
                color: AppColors.amberColor,
                text: AppStrings.strWaiting,
                isSquare: true,
              ),
              SizedBox(height: 4),
              Indicator(
                color: AppColors.redColour,
                text: AppStrings.strRejected,
                isSquare: true,
              ),
              SizedBox(height: 18),
            ],
          ),
          const SizedBox(width: 28),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final all = widget.response?.all ?? 0;
      final approved = widget.response?.accepted ?? 0;
      final cancelled = widget.response?.cancelled ?? 0;
      final inQueue = widget.response?.inQueue ?? 0;
      final approvedPer = ((approved * 100) / all);
      final cancelledPer = ((cancelled * 100) / all);
      final inQueuePer = ((inQueue * 100) / all);
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: AppColors.blackColor, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.greenColour,
            value: approvedPer,
            title: '${approvedPer.toStringAsFixed(1)}%',
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
            value: inQueuePer,
            title: '${inQueuePer.toStringAsFixed(1)}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: AppColors.redColour,
            value: cancelledPer,
            title: '${cancelledPer.toStringAsFixed(1)}%',
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
