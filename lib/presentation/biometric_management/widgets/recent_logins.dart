import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class RecentLogins extends StatelessWidget {
  const RecentLogins({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _itemsSection('United Kindom, iphone device'),
          SizedBox(height: scale.getScaledHeight(12)),
          _itemsSection('United Kindom, iphone device'),
          SizedBox(height: scale.getScaledHeight(12)),
          _itemsSection(
              'United Kindom, iphone deviceUnited\nKindom, iphone device'),
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
                  child: const Icon(
                    Icons.location_history,
                    color: Colors.white,
                  )),
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
