import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class SecurityAlerts extends StatelessWidget {
  const SecurityAlerts({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _items(
            "New phishing scam targets online shoppers.",
            scale,
          ),
          SizedBox(height: scale.getScaledHeight(12)),
          _items(
            "Data protection alerts found.",
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(16),
          ),
          Text(
            'Referral Link',
            style: AppStyle.style2.copyWith(
              fontSize: scale.getScaledHeight(16),
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: scale.getScaledHeight(10)),
          _items(
            "Reminder: Module 3 closes in 2 days",
            scale,
          ),
          SizedBox(height: scale.getScaledHeight(12)),
          _items(
            "Reminder: Module 4 starts from monday.",
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(String txt, ScalingUtility scale) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: scale.getScaledHeight(10),
          vertical: scale.getScaledHeight(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              txt,
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(11),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
