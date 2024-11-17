import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class SpecificIssues extends StatelessWidget {
  const SpecificIssues({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _issue(
            "Difficult navigation",
            const Icon(
              Icons.check_circle_outline_outlined,
              size: 19,
              color: Colors.green,
            ),
            scale,
          ),
          _issue(
            "Lack of features",
            const Icon(
              Icons.check_circle_outline_outlined,
              size: 19,
              color: Colors.green,
            ),
            scale,
          ),
          _issue(
            "Performance issues",
            const Icon(
              Icons.close_outlined,
              size: 19,
              color: Colors.red,
            ),
            scale,
          ),
          _issue(
            "Security alerts too frequent",
            const Icon(
              Icons.close_outlined,
              size: 19,
              color: Colors.red,
            ),
            scale,
          ),
        ],
      ),
    );
  }

  Widget _issue(String name, Icon icon, ScalingUtility scale) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(5)),
      child: ShadowBorderCard(
        content: Row(
          children: [
            ShadowBorderCard(
              content: icon,
            ),
            SizedBox(
              width: scale.getScaledHeight(15),
            ),
            Row(
              children: [
                Icon(
                  Icons.rectangle,
                  color: Colors.white,
                  size: scale.getScaledHeight(5),
                ),
                SizedBox(
                  width: scale.getScaledHeight(5),
                ),
                Text(
                  name,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
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
