import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';

class UserActivityMonitoring
    extends GetWidget<RealTimeThreadDetectionController> {
  const UserActivityMonitoring({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          values: RangeValues(
              scale.getScaledHeight(0.2), scale.getScaledHeight(0.8)),
          onChanged: (RangeValues values) {},
          min: scale.getScaledHeight(0.0),
          max: scale.getScaledHeight(1.0),
          activeColor: const Color.fromRGBO(165, 212, 225, 1),
          inactiveColor: const Color.fromRGBO(165, 212, 225, 1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'unauthorized access\n attempts',
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(8),
                fontWeight: FontWeight.normal,
                color: Colors.white60,
              ),
            ),
            Text(
              'unusual\n behavior',
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(8),
                fontWeight: FontWeight.normal,
                color: Colors.white60,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
