import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class AppStyle {
  static TextStyle style1 = TextStyle(
    color: Colors.white,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'DmSans',
    fontWeight: FontWeight.w600,
    fontFeatures: const [FontFeature.proportionalFigures()],
  );

  static TextStyle style2 = TextStyle(
    color: Colors.white,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'Helvetica',
    fontWeight: FontWeight.w600,
    fontFeatures: const [FontFeature.proportionalFigures()],
  );

  static TextStyle style4 = TextStyle(
    color: Colors.white,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'Helvetica',
    fontWeight: FontWeight.w600,
    fontFeatures: const [FontFeature.proportionalFigures()],
  );

  static TextStyle style3 = const TextStyle(
    fontSize: 16,
    color: Colors.white,
  );
}

ScalingUtility scale = Get.find<ScalingUtility>()
  ..setCurrentDeviceSize(Get.context!);

double getFontSize(double px) {
  return scale.getScaledFont(px);
}
