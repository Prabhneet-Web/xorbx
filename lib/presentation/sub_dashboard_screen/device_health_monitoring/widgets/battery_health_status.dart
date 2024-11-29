import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/semi_circular_progress_indicator.dart';

class BatteryHealthStatus extends StatelessWidget {
  const BatteryHealthStatus({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
        color: ColorConstant.color1,
        height: scale.getScaledHeight(100),
        width: (scale.fw /3),
        child: const SemiCircularProgressIndicator(progress: 0.78));
  }
}
