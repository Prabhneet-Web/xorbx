import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/semi_circular_progress_indicator.dart';

class ThreatLevelIndicator extends StatelessWidget {
  const ThreatLevelIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Padding(
      padding: EdgeInsets.all(scale.getScaledHeight(8)),
      child: Container(
        color: ColorConstant.color1,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SemiCircularProgressIndicator(progress: 1),
          ],
        ),
      ),
    );
  }
}
