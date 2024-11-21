import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class SecurityRecommendationsSection extends StatelessWidget {
  const SecurityRecommendationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _itemsSection(),
          SizedBox(
            height: scale.getScaledHeight(16),
          ),
          Text(
            'Helpful Resources',
            style: AppStyle.style2.copyWith(
              fontSize: scale.getScaledHeight(16),
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: scale.getScaledHeight(10)),
          _itemsSection2(),
        ],
      ),
    );
  }

  Widget _itemsSection() {
    return ShadowBorderCard(
      content: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: scale.getScaledHeight(2),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Text(
                "Use unique passwords for different accounts.",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(11),
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(7),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: scale.getScaledHeight(2),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Text(
                "Update passwords regularly, especially for\nsensitive accounts.",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(11),
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(7),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: scale.getScaledHeight(2),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Text(
                "Avoid using personal information in\npasswords.",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(11),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemsSection2() {
    return SizedBox(
      height: scale.getScaledHeight(80),
      width: scale.getScaledHeight(500),
      child: ShadowBorderCard(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Learn More About Strong Passwords.",
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(12),
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
            SizedBox(
              height: scale.getScaledHeight(7),
            ),
            Text(
              "Managing Compromised Accounts.",
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(12),
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
