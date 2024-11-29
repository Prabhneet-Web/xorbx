import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class BatteryPercentage extends StatelessWidget {
  final int percentage, radius;
  final Color color1, color2;

  const BatteryPercentage({
    super.key,
    required this.percentage,
    required this.radius,
    this.color1 = Colors.orange,
    this.color2 = Colors.white70,
  });

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: scale.getScaledHeight(100),
          width: (scale.fw) / 3,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PieChart(
                PieChartData(
                  sections:
                      _buildPieChartSections(percentage, color1, color2, scale),
                  centerSpaceRadius: scale.getScaledHeight(30),
                  sectionsSpace: scale.getScaledHeight(2),
                  startDegreeOffset: 270,
                ),
              ),
              Text(
                "$percentage%",
                style: TextStyle(
                  fontSize: scale.getScaledHeight(11),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> _buildPieChartSections(
    int percentage,
    Color color1,
    Color color2,
    ScalingUtility scale,
  ) {
    return [
      PieChartSectionData(
        value: percentage.toDouble(),
        color: color1,
        radius: scale.getScaledHeight(radius),
        showTitle: false,
      ),
      PieChartSectionData(
        value: (100 - percentage) * 1.2,
        color: color2,
        radius: scale.getScaledHeight(radius),
        showTitle: false,
      ),
    ];
  }
}
