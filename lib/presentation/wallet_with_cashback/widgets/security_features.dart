import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class SecurityFeatures extends StatelessWidget {
  const SecurityFeatures({super.key});

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
                    "Two Factor Authentication",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(11),
                    ),
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Switch(
                            value: false,
                            activeColor: ColorConstant.color4,
                            inactiveThumbColor: ColorConstant.color4,
                            activeTrackColor: ColorConstant.color3,
                            inactiveTrackColor: ColorConstant.color3,
                            onChanged: (bool value) {},
                          ),
                          const Positioned(
                            right: 15,
                            child: Text(
                              'ON',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
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
                "Activity Log",
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
          SizedBox(height: scale.getScaledHeight(12)),
          _items(
            Colors.green,
            "Password Change",
            const Icon(
              Icons.circle,
              size: 12,
              color: Colors.green,
            ),
            scale,
          ),
          SizedBox(height: scale.getScaledHeight(12)),
          _items(
            Colors.red,
            "Login Attempt",
            const Icon(
              Icons.circle,
              size: 12,
              color: Colors.red,
            ),
            scale,
          ),
          _items(
            Colors.green,
            "Transfer Initiated",
            const Icon(
              Icons.circle,
              size: 12,
              color: Colors.green,
            ),
            scale,
          ),
          SizedBox(height: scale.getScaledHeight(12)),
        ],
      ),
    );
  }

  Widget _items(Color color, String txt, Icon innerIcon, ScalingUtility scale) {
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
