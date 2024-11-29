import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class ReferralProgramDetails extends StatelessWidget {
  const ReferralProgramDetails({super.key});

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
            'Referral Link',
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
                "Refer a friend and earn \$10 when\nthey make their first purchase!",
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
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "www.example.com/referral/XYZ123",
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
