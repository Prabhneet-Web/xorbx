import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';
import 'package:xorbx/widgets/container_decoration.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';

class UpdateStatus extends GetWidget<RealTimeThreadDetectionController> {
  const UpdateStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _updateStatusCards(
            'Software Updates', Colors.green, 'V 1.0', 'November 02, 2024'),
        SizedBox(height: scale.getScaledHeight(16)),
        _updateStatusCards(
            'Antivirus Updates', Colors.red, 'V 2.0', 'November 02, 2024'),
      ],
    );
  }

  Widget _updateStatusCards(
      String name, Color color, String version, String date) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        decoration: cardDecoration(),
        padding: EdgeInsets.symmetric(
            vertical: scale.getScaledHeight(20),
            horizontal: scale.getScaledHeight(10)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: scale.getScaledWidth(20)),
                CircleAvatar(
                  radius: scale.getScaledHeight(5),
                  backgroundColor: color,
                ),
                SizedBox(width: scale.getScaledWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: AppStyle.style1
                          .copyWith(fontSize: scale.getScaledHeight(12)),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: scale.getScaledWidth(20)),
                SizedBox(
                  width: scale.getScaledWidth(scale.fw - 200),
                  height: scale.getScaledHeight(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Latest version: ",
                        style: AppStyle.style1
                            .copyWith(fontSize: scale.getScaledHeight(8)),
                      ),
                      Text(
                        version,
                        style: AppStyle.style1
                            .copyWith(fontSize: scale.getScaledHeight(8)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: scale.getScaledWidth(20)),
                SizedBox(
                  width: scale.getScaledWidth(scale.fw - 140),
                  height: scale.getScaledHeight(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Last updated timestamp: ",
                        style: AppStyle.style1
                            .copyWith(fontSize: scale.getScaledHeight(8)),
                      ),
                      Text(
                        date,
                        style: AppStyle.style1
                            .copyWith(fontSize: scale.getScaledHeight(8)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
