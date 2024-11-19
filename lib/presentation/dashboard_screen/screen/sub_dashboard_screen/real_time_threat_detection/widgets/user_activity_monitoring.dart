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
          values: const RangeValues(0.2, 0.8),
          onChanged: (RangeValues values) {},
          min: 0.0,
          max: 1.0,
          activeColor: const Color.fromRGBO(165, 212, 225, 1),
          inactiveColor: const Color.fromRGBO(165, 212, 225, 1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'unauthorized access\n attempts',
              style: AppStyle.style1.copyWith(
                fontSize: 8,
                fontWeight: FontWeight.normal,
                color: Colors.white60,
              ),
            ),
            Text(
              'unusual\n behavior',
              style: AppStyle.style1.copyWith(
                fontSize: 8,
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
