import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/heat_map_details.dart';

class HeatMap extends StatelessWidget {
  const HeatMap({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Stack(
      children: [
        const HeatMapDetails(),
        Positioned(
          left: scale.getScaledHeight(8),
          bottom: scale.getScaledHeight(8),
          child: Text(
            'Threats\nDetected: 12',
            style: TextStyle(
              color: ColorConstant.color1,
              fontSize: scale.getScaledHeight(11),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
