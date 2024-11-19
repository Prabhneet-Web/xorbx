import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';

class PieCharts extends GetWidget<RealTimeThreadDetectionController> {
  const PieCharts({super.key});

  @override
  Widget build(BuildContext context) {
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
              const SizedBox(
                width: 8,
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
        height: 140,
        decoration: BoxDecoration(
          color: ColorConstant.color1,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PieChart(
                    PieChartData(
                      sections: _buildPieChartSections(
                          percentage, color1, color2, color3),
                      centerSpaceRadius: 30,
                      sectionsSpace: 2,
                      startDegreeOffset: 270,
                    ),
                  ),
                  Text(
                    "$percentage%",
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 38),
            Text(
              title,
              style: const TextStyle(
                fontSize: 9,
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
        radius: 20,
        showTitle: false,
      ),
      PieChartSectionData(
        value: (100 - percentage) *
            0.6, // Adjusts the visual weight of the remaining section
        color: color2,
        radius: 20,
        showTitle: false,
      ),
      PieChartSectionData(
        value: (100 - percentage) *
            0.4, // A minor section for another visual layer
        color: color3,
        radius: 20,
        showTitle: false,
      ),
    ];
  }
}
