import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class LastMonthNotifications extends StatelessWidget {
  const LastMonthNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _itemsSection('Security alerts found.', Colors.red),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _itemsSection('05 Active threats found.', Colors.orange),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _itemsSection('38 threats resolved.', Colors.green),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _itemsSection('Storage capacity is almost full.', Colors.red),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _itemsSection('Cyber security attack found.', Colors.red),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _itemsSection('Malware attack found.', Colors.red),
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
                    "Last timestamp:",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                    ),
                  ),
                  SizedBox(
                    width: scale.getScaledHeight(6),
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
        ],
      ),
    );
  }
}
