import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';
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
          height: scale.getScaledHeight(170),
          width: scale.fw,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(
                drawVerticalLine: false,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: Colors.white.withOpacity(0.5),
                  strokeWidth: scale.getScaledHeight(1),
                ),
              ),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: scale.getScaledHeight(25),
                    interval: scale.getScaledHeight(20),
                    getTitlesWidget: (value, meta) {
                      return Text(
                        value.toInt().toString(),
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: scale.getScaledHeight(7),
                        ),
                      );
                    },
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: scale.getScaledHeight(1),
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
                          fontSize: scale.getScaledHeight(7),
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
                    FlSpot(scale.getScaledHeight(0), scale.getScaledHeight(10)),
                    FlSpot(scale.getScaledHeight(1), scale.getScaledHeight(20)),
                    FlSpot(scale.getScaledHeight(2), scale.getScaledHeight(40)),
                    FlSpot(scale.getScaledHeight(3), scale.getScaledHeight(60)),
                    FlSpot(scale.getScaledHeight(4), scale.getScaledHeight(70)),
                    FlSpot(scale.getScaledHeight(5), scale.getScaledHeight(80)),
                    FlSpot(scale.getScaledHeight(6), scale.getScaledHeight(60)),
                    FlSpot(scale.getScaledHeight(7), scale.getScaledHeight(63)),
                    FlSpot(scale.getScaledHeight(8), scale.getScaledHeight(74)),
                    FlSpot(scale.getScaledHeight(9), scale.getScaledHeight(65)),
                    FlSpot(
                        scale.getScaledHeight(10), scale.getScaledHeight(60)),
                  ],
                  dotData: const FlDotData(show: false),
                  color: Colors.red,
                  barWidth: scale.getScaledHeight(1),
                ),
                LineChartBarData(
                  isCurved: false,
                  spots: [
                    FlSpot(scale.getScaledHeight(0), scale.getScaledHeight(20)),
                    FlSpot(scale.getScaledHeight(1), scale.getScaledHeight(30)),
                    FlSpot(scale.getScaledHeight(2), scale.getScaledHeight(45)),
                    FlSpot(scale.getScaledHeight(3), scale.getScaledHeight(65)),
                    FlSpot(scale.getScaledHeight(4), scale.getScaledHeight(50)),
                    FlSpot(scale.getScaledHeight(5), scale.getScaledHeight(60)),
                    FlSpot(scale.getScaledHeight(6), scale.getScaledHeight(50)),
                    FlSpot(scale.getScaledHeight(7), scale.getScaledHeight(65)),
                    FlSpot(scale.getScaledHeight(8), scale.getScaledHeight(70)),
                    FlSpot(scale.getScaledHeight(9), scale.getScaledHeight(60)),
                    FlSpot(
                        scale.getScaledHeight(10), scale.getScaledHeight(70)),
                  ],
                  dotData: const FlDotData(show: false),
                  color: Colors.green,
                  barWidth: scale.getScaledHeight(1),
                ),
              ],
              minY: scale.getScaledHeight(0),
              maxY: scale.getScaledHeight(80),
            ),
          ),
        ),
        SizedBox(
          height: scale.getScaledHeight(10),
        ),
        Text(
          "Suspicious Connections List",
          style: AppStyle.style2.copyWith(
            fontSize: scale.getScaledHeight(16),
          ),
        ),
        SizedBox(
          height: scale.getScaledHeight(10),
        ),
        _networkTrafficCards(
          'Timestamps',
          Colors.red,
          _networkTrafficCardsDetails1(),
        ),
        SizedBox(
          height: scale.getScaledHeight(12),
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
          padding: EdgeInsets.symmetric(
            vertical: scale.getScaledHeight(15),
            horizontal: scale.getScaledHeight(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: scale.getScaledHeight(20),
              ),
              CircleAvatar(
                radius: scale.getScaledHeight(5),
                backgroundColor: color,
              ),
              SizedBox(
                width: scale.getScaledHeight(15),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(12),
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              details,
              SizedBox(
                width: scale.getScaledHeight(10),
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
            Icon(
              Icons.refresh,
              size: scale.getScaledHeight(11),
              color: Colors.white60,
            ),
            SizedBox(
              width: scale.getScaledHeight(2),
            ),
            Text(
              "Last Synced:",
              style: AppStyle.style2.copyWith(
                  color: Colors.white60,
                  fontWeight: FontWeight.normal,
                  fontSize: scale.getScaledHeight(11)),
            ),
          ],
        ),
        Text(
          "September 01, 2024",
          style: TextStyle(
            color: Colors.white60,
            fontSize: scale.getScaledHeight(7),
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
              fontSize: scale.getScaledHeight(13)),
        ),
        Text(
          "Protocols",
          style: TextStyle(
            color: Colors.white60,
            fontSize: scale.getScaledHeight(9),
          ),
        ),
      ],
    );
  }
}
