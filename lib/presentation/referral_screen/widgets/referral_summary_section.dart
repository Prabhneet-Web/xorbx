import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class ReferralSummarySection extends StatelessWidget {
  const ReferralSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            "Wallet Balance: \$500",
            scale,
          ),
          SizedBox(height: scale.getScaledHeight(12)),
          _items(
            "Total Referrals Made: 20",
            scale,
          ),
          SizedBox(height: scale.getScaledHeight(12)),
          _items(
            "Total Bonuses Earned: \$150",
            scale,
          ),
          SizedBox(height: scale.getScaledHeight(12)),
        ],
      ),
    );
  }

  Widget _items(String txt, ScalingUtility scale) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: scale.getScaledHeight(10),
          vertical: scale.getScaledHeight(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              txt,
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(11),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
