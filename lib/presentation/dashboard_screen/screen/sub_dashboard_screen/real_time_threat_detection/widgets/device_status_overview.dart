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
        const SizedBox(height: 15),
        _deviceStatusCards('Vulnerabilities', Colors.red),
      ],
    );
  }

  Widget _deviceStatusCards(String name, Color color) {
    return ShadowBorderCard(
      content: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: color,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: AppStyle.style1.copyWith(
                        fontSize: 11,
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
            top: 2,
            right: 15,
            child: CustomPaint(
              painter: InnerShadowPainter(),
              child: Container(
                height: 30,
                width: 30,
                decoration: cardDecoration(),
                child: const Center(
                  child: Icon(
                    Icons.verified_outlined,
                    size: 18,
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
