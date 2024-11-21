import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';
import 'package:xorbx/widgets/custom_slider.dart';

class ComplianceOverview extends GetWidget<RealTimeThreadDetectionController> {
  const ComplianceOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildComplianceSlider(
            'GDPR', scale.getScaledHeight(70), Colors.orange),
        _buildComplianceSlider('HIPAA', scale.getScaledHeight(40), Colors.red),
      ],
    );
  }

  Widget _buildComplianceSlider(String label, double value, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.circle,
          color: color,
          size: scale.getScaledHeight(11),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          label,
          style: AppStyle.style1.copyWith(
            fontSize: scale.getScaledHeight(12),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_left_outlined,
                size: scale.getScaledHeight(20),
                color: Colors.white54,
              ),
              CustomSlider(
                value: value,
                color: color,
              ),
              Icon(
                Icons.arrow_right_outlined,
                size: scale.getScaledHeight(20),
                color: Colors.white54,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
