import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/custom_pie_chart.dart';

class AlertsBySeverity extends StatelessWidget {
  const AlertsBySeverity({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      height: scale.getScaledHeight(100),
      width: (scale.fw) / 3,
      child: const CustomPieChart(
        percentage: 65,
        color1: Colors.orange,
        color2: Colors.green,
        color3: Colors.red,
        radius: 15,
      ),
    );
  }
}
