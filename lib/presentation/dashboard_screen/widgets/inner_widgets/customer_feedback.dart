import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/custom_slider.dart';

class CustomerFeedback extends GetWidget {
  const CustomerFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      width: scale.fw,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: scale.getScaledHeight(15),
        ),
        child: Column(
          children: [
            _buildSliderRow('Ratings:', Colors.yellow.shade600, 50, context),
            SizedBox(height: scale.getScaledHeight(10)),
            _buildSliderRow('Issues:', Colors.orange.shade700, 70, context),
            SizedBox(height: scale.getScaledHeight(10)),
            _buildSliderRow('Alerts:', Colors.red, 50, context),
            SizedBox(height: scale.getScaledHeight(10)),
            _buildSliderRow('informational:', Colors.green, 80, context),
          ],
        ),
      ),
    );
  }
}

Widget _buildSliderRow(String label, Color color, double value, context) {
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
      Row(
        children: [
          const Icon(
            Icons.arrow_left_outlined,
            size: 15,
            color: Colors.white54,
          ),
          CustomSlider(
            color: color,
            value: value,
          ),
          const Icon(
            Icons.arrow_right_outlined,
            size: 15,
            color: Colors.white54,
          ),
        ],
      )
    ],
  );
}
