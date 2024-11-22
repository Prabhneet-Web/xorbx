import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class TotalAlerts extends StatelessWidget {
  const TotalAlerts({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      height: scale.getScaledHeight(100),
      width: (scale.fw - scale.getScaledHeight(113)) / scale.getScaledHeight(2),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: Colors.red,
            size: scale.getScaledHeight(12),
          ),
          SizedBox(
            width: scale.getScaledHeight(10),
          ),
          Text(
            "Total 100\nAlerts Detected.",
            style: AppStyle.style3.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
