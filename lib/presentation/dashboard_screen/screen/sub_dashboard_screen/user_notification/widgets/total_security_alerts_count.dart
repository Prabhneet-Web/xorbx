import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class TotalSecurityAlertsCount extends StatelessWidget {
  const TotalSecurityAlertsCount({super.key});

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
                vertical: scale.getScaledHeight(10),
                horizontal: scale.getScaledHeight(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Number of Alerts",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(11),
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: scale.getScaledHeight(5),
                        backgroundColor: Colors.green,
                      ),
                      SizedBox(
                        width: scale.getScaledHeight(6),
                      ),
                      Text(
                        "15",
                        style: AppStyle.style1.copyWith(
                          fontSize: scale.getScaledHeight(11),
                        ),
                      ),
                    ],
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
                "Device Health Metrics Summary",
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
            const Icon(
              Icons.battery_2_bar_outlined,
              color: Colors.white,
              size: 17,
            ),
            "Battery Health",
            const Icon(
              Icons.circle,
              size: 12,
              color: Colors.green,
            ),
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            Colors.red,
            const Icon(
              Icons.storage_outlined,
              color: Colors.white,
              size: 17,
            ),
            "Storage Management",
            const Icon(
              Icons.circle,
              size: 12,
              color: Colors.red,
            ),
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(Color color, Icon icon, String txt, Icon innerIcon,
      ScalingUtility scale) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: scale.getScaledHeight(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                SizedBox(
                  width: scale.getScaledHeight(8),
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
