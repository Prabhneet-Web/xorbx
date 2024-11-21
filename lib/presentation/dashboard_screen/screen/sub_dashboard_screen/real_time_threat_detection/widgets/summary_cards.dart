import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';
import 'package:xorbx/widgets/container_decoration.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';

class SummaryCards extends GetWidget<RealTimeThreadDetectionController> {
  const SummaryCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildSummaryCard(
            'Total\nThreats', controller.totalThreats, Colors.orange),
        SizedBox(width: scale.getScaledWidth(8)),
        _buildSummaryCard(
            'Resolved\nThreats', controller.resolvedThreats, Colors.green),
        SizedBox(width: scale.getScaledWidth(8)),
        _buildSummaryCard(
            'Inactive\nThreats', controller.inactiveThreats, Colors.red),
      ],
    );
  }

  Widget _buildSummaryCard(String title, RxInt count, Color color) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Obx(
        () => Container(
          width: scale.getScaledWidth(102),
          height: scale.getScaledHeight(100),
          padding: EdgeInsets.all(scale.getScaledHeight(16)),
          decoration: cardDecoration(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style: AppStyle.style2.copyWith(
                        fontSize: scale.getScaledHeight(16),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: scale.getScaledHeight(5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: scale.getScaledHeight(6),
                    backgroundColor: color,
                  ),
                  SizedBox(width: scale.getScaledWidth(8)),
                  Text(
                    '${count.value}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: scale.getScaledHeight(12),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
