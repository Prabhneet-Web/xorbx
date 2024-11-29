import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class NotificationAlerts extends StatelessWidget {
  const NotificationAlerts({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _itemsSection(
              'You have used 90% of your data limit.\nConsider monitoring usage.'),
          SizedBox(height: scale.getScaledHeight(12)),
          _itemsSection(
              'You are now 95% towards your data limit!\nSwitch to Wi-Fi to save data.'),
          SizedBox(height: scale.getScaledHeight(12)),
          _itemsSection('You have reached your data limit for\nthis period.'),
          SizedBox(height: scale.getScaledHeight(12)),
          _itemsSection(
              'You used 2GB in the last 2 hours.\nConsider reducing video streaming.'),
          SizedBox(height: scale.getScaledHeight(12)),
          _itemsSection(
              'Switch to Wi-Fi for updates and\ndownloads to save mobile data.'),
          SizedBox(height: scale.getScaledHeight(12)),
          _itemsSection(
              'You’ve consistently hit your data limit.\nExplore our unlimited plans'),
        ],
      ),
    );
  }

  Widget _itemsSection(String name) {
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
                  backgroundColor: Colors.red,
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
                    "Last timestamp:",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                    ),
                  ),
                  SizedBox(
                    width: scale.getScaledHeight(6),
                  ),
                  Text(
                    'November 01, 2024',
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
}
