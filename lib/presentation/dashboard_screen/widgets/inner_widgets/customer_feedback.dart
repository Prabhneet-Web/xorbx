import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class CustomerFeedback extends GetWidget {
  const CustomerFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      height: scale.getScaledHeight(130),
      width: scale.fw,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: scale.getScaledHeight(15),
        ),
        child: Column(
          children: [
            _buildSliderRow('Ratings:', Colors.yellow.shade600),
            _buildSliderRow('Issues:', Colors.orange.shade700),
            _buildSliderRow('Alerts:', Colors.red),
            _buildSliderRow('informational:', Colors.green),
          ],
        ),
      ),
    );
  }
}

Widget _buildSliderRow(String label, Color color) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: AppStyle.style1.copyWith(
          fontSize: 9,
          color: Colors.white70,
        ),
      ),
      Slider(
        value: 0.7,
        onChanged: (value) {},
        activeColor: color,
        thumbColor: ColorConstant.color3,
      ),
    ],
  );
}
