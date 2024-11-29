import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class CurrentPromotions extends StatelessWidget {
  const CurrentPromotions({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          ShadowBorderCard(
            content: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: scale.getScaledHeight(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Earn double bonuses this week!\nRefer your friends now and get \$20\nfor each successful referral!",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(11),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: scale.getScaledHeight(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Social Sharing Buttons",
                style: AppStyle.style2.copyWith(
                  fontSize: scale.getScaledHeight(16),
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: scale.getScaledHeight(16)),
          _items(
            Colors.green,
            "Login Attempt",
            const Icon(
              Icons.circle,
              size: 12,
              color: Colors.green,
            ),
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(Color color, String txt, Icon innerIcon, ScalingUtility scale) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: scale.getScaledHeight(10),
          vertical: scale.getScaledHeight(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage(ImageConstants.facebook),
                radius: scale.getScaledHeight(18),
                backgroundColor: Colors.transparent,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage(ImageConstants.linkedin),
                radius: scale.getScaledHeight(18),
                backgroundColor: Colors.transparent,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage(ImageConstants.twitter),
                radius: scale.getScaledHeight(18),
                backgroundColor: Colors.transparent,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage(ImageConstants.whatsapp),
                radius: scale.getScaledHeight(18),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
