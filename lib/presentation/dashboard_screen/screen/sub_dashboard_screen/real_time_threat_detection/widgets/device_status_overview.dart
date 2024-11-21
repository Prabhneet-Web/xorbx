import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';
import 'package:xorbx/widgets/container_decoration.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DeviceStatusOverview
    extends GetWidget<RealTimeThreadDetectionController> {
  const DeviceStatusOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _deviceStatusCards('Secure', Colors.green),
        SizedBox(height: scale.getScaledHeight(15)),
        _deviceStatusCards('Vulnerabilities', Colors.red),
      ],
    );
  }

  Widget _deviceStatusCards(String name, Color color) {
    return ShadowBorderCard(
      content: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: scale.getScaledHeight(8),
              horizontal: scale.getScaledHeight(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: scale.getScaledHeight(20),
                ),
                CircleAvatar(
                  radius: scale.getScaledHeight(5),
                  backgroundColor: color,
                ),
                SizedBox(
                  width: scale.getScaledHeight(15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(11),
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          Positioned(
            top: scale.getScaledHeight(2),
            right: scale.getScaledHeight(15),
            child: CustomPaint(
              painter: InnerShadowPainter(),
              child: Container(
                height: scale.getScaledHeight(30),
                width: scale.getScaledHeight(30),
                decoration: cardDecoration(),
                child: Center(
                  child: Icon(
                    Icons.verified_outlined,
                    size: scale.getScaledHeight(18),
                    color: Colors.white54,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
