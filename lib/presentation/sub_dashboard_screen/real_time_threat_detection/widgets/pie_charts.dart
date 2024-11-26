import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class PieCharts extends GetWidget<RealTimeThreadDetectionController> {
  const PieCharts({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildPieChartCard(
                'Threat Type Distribution:',
                65,
                Colors.orange,
                Colors.green,
                Colors.grey,
              ),
              SizedBox(
                width: scale.getScaledHeight(8),
              ),
              _buildPieChartCard(
                'Device Status Distribution:',
                85,
                Colors.green,
                Colors.red,
                Colors.yellow,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPieChartCard(
      String title, int percentage, Color color1, Color color2, Color color3) {
    return Expanded(
      child: Container(
        height: scale.getScaledHeight(140),
        decoration: BoxDecoration(
          color: ColorConstant.color1,
          borderRadius: BorderRadius.circular(scale.getScaledHeight(12)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: scale.getScaledHeight(80),
              height: scale.getScaledHeight(80),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PieChart(
                    PieChartData(
                      sections: _buildPieChartSections(
                          percentage, color1, color2, color3),
                      centerSpaceRadius: scale.getScaledHeight(30),
                      sectionsSpace: scale.getScaledHeight(2),
                      startDegreeOffset: scale.getScaledHeight(270),
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
            SizedBox(height: scale.getScaledHeight(38)),
            Text(
              title,
              style: TextStyle(
                fontSize: scale.getScaledHeight(9),
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _buildPieChartSections(
      int percentage, Color color1, Color color2, Color color3) {
    return [
      PieChartSectionData(
        value: percentage.toDouble(),
        color: color1,
        radius: scale.getScaledHeight(20),
        showTitle: false,
      ),
      PieChartSectionData(
        value: (100 - percentage) * 0.6,
        color: color2,
        radius: scale.getScaledHeight(20),
        showTitle: false,
      ),
      PieChartSectionData(
        value: (100 - percentage) * 0.4,
        color: color3,
        radius: scale.getScaledHeight(20),
        showTitle: false,
      ),
    ];
  }
}
