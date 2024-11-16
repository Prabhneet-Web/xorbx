import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class AlertsAndNotifications extends StatelessWidget {
  const AlertsAndNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _itemsSection(
            'Software Updates',
            "Camera and Location.",
            Colors.green,
          ),
          SizedBox(
            height: scale.getScaledHeight(16),
          ),
          _itemsSection(
            'Antivirus Updates',
            "Storage, Location and files.",
            Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _itemsSection(String name, String details, Color color) {
    return ShadowBorderCard(
      content: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: scale.getScaledHeight(5),
                backgroundColor: color,
              ),
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Text(
                name,
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(12),
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(7),
          ),
          Row(
            children: [
              Text(
                "Request Access:",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                ),
              ),
              SizedBox(
                width: scale.getScaledHeight(50),
              ),
              Text(
                details,
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                  color: Colors.white54,
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(4),
          ),
          Row(
            children: [
              Text(
                "Last updated timestamp:",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                ),
              ),
              SizedBox(
                width: scale.getScaledHeight(11),
              ),
              Text(
                'November 02, 2024',
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
