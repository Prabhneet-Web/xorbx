import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/compromised_password/controller/compromised_password_controller.dart';
import 'package:xorbx/widgets/container_decoration.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';

class KeyMetricsSection extends GetWidget<CompromisedPasswordController> {
  const KeyMetricsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildSummaryCard(
            'Total\nCompromised\nAccount', controller.totalThreats, Colors.red),
        SizedBox(width: scale.getScaledWidth(8)),
        _buildSummaryCard('New\nCompromises\n(Last 24\nHours)',
            controller.resolvedThreats, Colors.orange),
        SizedBox(width: scale.getScaledWidth(8)),
        _buildSummaryCard('Actions\nTaken (Last\nWeek)',
            controller.inactiveThreats, Colors.green),
      ],
    );
  }

  Widget _buildSummaryCard(String title, RxInt count, Color color) {
    return Expanded(
      child: CustomPaint(
        painter: InnerShadowPainter(),
        child: Obx(
          () => Container(
            width: scale.getScaledWidth(110),
            height: scale.getScaledHeight(150),
            padding: EdgeInsets.all(scale.getScaledHeight(16)),
            decoration: cardDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: AppStyle.style2.copyWith(
                          fontSize: scale.getScaledHeight(14),
                        ),
                      ),
                    ],
                  ),
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
      ),
    );
  }
}
