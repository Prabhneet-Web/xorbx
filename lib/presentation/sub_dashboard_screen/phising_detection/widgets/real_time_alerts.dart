import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class RealTimeAlerts extends StatelessWidget {
  const RealTimeAlerts({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _itemsSection('Threat Detected: Suspicious Login', Colors.red),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _itemsSection('Threat Detected: High Risk ', Colors.red),
          SizedBox(height: scale.getScaledHeight(16)),
          Row(
            children: [
              Text(
                "Daily/Weekly Digest (Collapsible)",
                style: AppStyle.style2.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(width: scale.getScaledHeight(12)),
              const Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
          SizedBox(height: scale.getScaledHeight(10)),
          _itemsSection2('Password Attempt Alert.', Colors.red),
          SizedBox(height: scale.getScaledHeight(12)),
          _itemsSection2('Data Export Attempt.', Colors.red),
        ],
      ),
    );
  }

  Widget _itemsSection(String name, Color color) {
    return ShadowBorderCard(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: scale.getScaledHeight(3),
                ),
                child: CircleAvatar(
                  radius: scale.getScaledHeight(5.5),
                  backgroundColor: color,
                ),
              ),
            ],
          ),
          SizedBox(
            width: scale.getScaledHeight(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(12),
                ),
              ),
              SizedBox(
                height: scale.getScaledHeight(6),
              ),
              Row(
                children: [
                  Text(
                    "Timestamp:",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                    ),
                  ),
                  SizedBox(
                    width: scale.getScaledHeight(6),
                  ),
                  Text(
                    '3 mins ago',
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemsSection2(String name, Color color) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: scale.getScaledHeight(5.5),
                  backgroundColor: color,
                ),
                SizedBox(
                  width: scale.getScaledHeight(10),
                ),
                Column(
                  children: [
                    Text(
                      name,
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(12),
                      ),
                    ),
                    SizedBox(
                      height: scale.getScaledHeight(6),
                    ),
                  ],
                ),
              ],
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
      ),
    );
  }
}
