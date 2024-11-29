import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            'Total Data Used: 5 GB',
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'Data Limit: 10 GB',
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            '50% of data limit used',
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(String name, ScalingUtility scale) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          vertical: scale.getScaledHeight(10),
          horizontal: scale.getScaledHeight(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: scale.getScaledHeight(3),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: scale.getScaledHeight(10),
                ),
                Text(
                  name,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(11),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}