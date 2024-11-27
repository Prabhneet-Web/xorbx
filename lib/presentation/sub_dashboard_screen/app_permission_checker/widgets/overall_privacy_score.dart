import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/semi_circular_progress_indicator.dart';

class OverallPrivacyScore extends StatelessWidget {
  const OverallPrivacyScore({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
        color: ColorConstant.color1,
        height: scale.getScaledHeight(100), // Scaled height
        width: (scale.fw - 112) / 2,
        child: const SemiCircularProgressIndicator(progress: 0.78));
  }
}