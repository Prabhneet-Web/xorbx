import 'package:flutter/material.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DataSavingTips extends StatelessWidget {
  const DataSavingTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.color1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _itemsSection(),
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
                "Switch to Wi-Fi for large downloads.",
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
                "Limit background data usage for\nless-used apps",
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
                "Lower video streaming quality to\nsave data.",
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
}
