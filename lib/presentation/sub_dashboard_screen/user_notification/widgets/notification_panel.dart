import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class NotificationPanel extends StatelessWidget {
  const NotificationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            'Malware Presence:',
            Colors.green,
            const Icon(
              Icons.shield_outlined,
              color: Colors.white,
              size: 17,
            ),
            "No Malware",
            const Icon(
              Icons.verified_outlined,
              size: 18,
              color: Colors.green,
            ),
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'Malware Presence',
            Colors.red,
            const Icon(
              Icons.shield_moon_outlined,
              color: Colors.white,
              size: 17,
            ),
            "Malware",
            const Icon(
              Icons.warning_amber_rounded,
              size: 18,
              color: Colors.orange,
            ),
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(String name, Color color, Icon icon, String txt, Icon innerIcon,
      ScalingUtility scale) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          vertical: scale.getScaledHeight(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: scale.getScaledHeight(5),
                  backgroundColor: color,
                ),
                SizedBox(
                  width: scale.getScaledHeight(6),
                ),
                Text(
                  name,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(11),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                icon,
                SizedBox(
                  width: scale.getScaledHeight(4),
                ),
                Text(
                  txt,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(11),
                  ),
                ),
              ],
            ),
            CustomPaint(
              painter: InnerShadowPainter(),
              child: Container(
                height: scale.getScaledHeight(30),
                width: scale.getScaledHeight(30),
                decoration: BoxDecoration(
                  color: ColorConstant.color1,
                  borderRadius:
                      BorderRadius.circular(scale.getScaledHeight(10)),
                ),
                child: Center(
                  child: innerIcon,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
