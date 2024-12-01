import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/common_network_image.dart';

class RecommendedArticles extends StatelessWidget {
  const RecommendedArticles({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _items(
            "Five Steps to Stronger Passwords.",
            scale,
          ),
          SizedBox(height: scale.getScaledHeight(12)),
        ],
      ),
    );
  }

  Widget _items(String txt, ScalingUtility scale) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CommonNetworkImageView(
            url: ImageConstants.trainingModule,
            fit: BoxFit.cover,
            height: 150,
            width: scale.fw,
          ),
        ),
        SizedBox(height: scale.getScaledHeight(12)),
        Row(
          children: [
            Text(
              txt,
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(14),
              ),
            ),
          ],
        ),
        SizedBox(height: scale.getScaledHeight(6)),
        Row(
          children: [
            Text(
              "Learn to protect your accounts with these expert tips.",
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(9),
                color: Colors.white60,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
