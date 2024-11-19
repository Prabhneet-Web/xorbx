import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';
import 'package:xorbx/widgets/container_decoration.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';

class NetworkTrafficAnalysis
    extends GetWidget<RealTimeThreadDetectionController> {
  const NetworkTrafficAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 170,
          width: scale.fw,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(
                drawVerticalLine: false,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: Colors.white.withOpacity(0.5),
                  strokeWidth: scale.getScaledHeight(1), // Scaled stroke width
                ),
              ),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: scale.getScaledHeight(25),
                    interval: 20,
                    getTitlesWidget: (value, meta) {
                      return Text(
                        value.toInt().toString(),
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize:
                              scale.getScaledHeight(7), // Scaled font size
                        ),
                      );
                    },
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1, // Interval for labels
                    getTitlesWidget: (value, meta) {
                      const labels = [
                        'D1',
                        'D2',
                        'D3',
                        'D4',
                        'D5',
                        'D6',
                        'D7',
                        'W1',
                        'W2',
                        'W3',
                        'M'
                      ];
                      return Text(
                        labels[value.toInt() % labels.length],
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize:
                              scale.getScaledHeight(7), // Scaled font size
                        ),
                      );
                    },
                  ),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: true,
                border: const Border(
                  left: BorderSide(
                    color: Colors.grey,
                  ),
                  bottom: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              lineBarsData: [
                LineChartBarData(
                  isCurved: false,
                  spots: [
                    const FlSpot(0, 10),
                    const FlSpot(1, 20),
                    const FlSpot(2, 40),
                    const FlSpot(3, 60),
                    const FlSpot(4, 70),
                    const FlSpot(5, 80),
                    const FlSpot(6, 60),
                    const FlSpot(7, 63),
                    const FlSpot(8, 74),
                    const FlSpot(9, 65),
                    const FlSpot(10, 60),
                  ],
                  dotData: const FlDotData(show: false),
                  color: Colors.red,
                  barWidth: 1,
                ),
                LineChartBarData(
                  isCurved: false,
                  spots: [
                    const FlSpot(0, 20),
                    const FlSpot(1, 30),
                    const FlSpot(2, 45),
                    const FlSpot(3, 65),
                    const FlSpot(4, 50),
                    const FlSpot(5, 60),
                    const FlSpot(6, 50),
                    const FlSpot(7, 65),
                    const FlSpot(8, 70),
                    const FlSpot(9, 60),
                    const FlSpot(10, 70),
                  ],
                  dotData: const FlDotData(show: false),
                  color: Colors.green,
                  barWidth: 1,
                ),
              ],
              minY: scale.getScaledHeight(0),
              maxY: scale.getScaledHeight(80),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Suspicious Connections List",
          style: AppStyle.style2.copyWith(
            fontSize: scale.getScaledHeight(16),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        _networkTrafficCards(
          'Timestamps',
          Colors.red,
          _networkTrafficCardsDetails1(),
        ),
        const SizedBox(
          height: 12,
        ),
        _networkTrafficCards(
          'IP Addresses',
          Colors.green,
          _networkTrafficCardsDetails2(),
        ),
      ],
    );
  }

  Widget _networkTrafficCards(String name, Color color, Widget details) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        decoration: cardDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: color,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppStyle.style1.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              details,
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _networkTrafficCardsDetails1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            const Icon(
              Icons.refresh,
              size: 11,
              color: Colors.white60,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              "Last Synced:",
              style: AppStyle.style2.copyWith(
                  color: Colors.white60,
                  fontWeight: FontWeight.normal,
                  fontSize: 11),
            ),
          ],
        ),
        const Text(
          "September 01, 2024",
          style: TextStyle(
            color: Colors.white60,
            fontSize: 7,
          ),
        ),
      ],
    );
  }

  Widget _networkTrafficCardsDetails2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "(HTTP)",
          style: AppStyle.style1.copyWith(
              color: Colors.white60,
              fontWeight: FontWeight.normal,
              fontSize: 13),
        ),
        const Text(
          "Protocols",
          style: TextStyle(
            color: Colors.white60,
            fontSize: 9,
          ),
        ),
      ],
    );
  }
}
