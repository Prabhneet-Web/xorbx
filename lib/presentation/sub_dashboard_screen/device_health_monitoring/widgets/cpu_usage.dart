import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class CpuUsage extends StatelessWidget {
  const CpuUsage({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      height: scale.getScaledHeight(130),
      width: scale.fw,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: BarChart(
          BarChartData(
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
                  interval: 20,
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
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
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
            ),
            borderData: FlBorderData(
              show: true,
              border: const Border(
                left: BorderSide(color: Colors.grey),
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(70),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.orange,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(110),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.green,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(40),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.red,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(70),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.orange,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 4,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(30),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.green,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 5,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(100),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.red,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 6,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(70),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.orange,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 7,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(40),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.green,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 8,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(110),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.red,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 9,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(50),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.orange,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 10,
                barRods: [
                  BarChartRodData(
                    toY: scale.getScaledHeight(80),
                    fromY: scale.getScaledHeight(5),
                    borderRadius: const BorderRadius.all(Radius.zero),
                    color: Colors.green,
                    width: scale.getScaledHeight(8),
                  ),
                ],
              ),
            ],
            minY: 0,
            maxY: scale.getScaledHeight(100),
          ),
        ),
      ),
    );
  }
}