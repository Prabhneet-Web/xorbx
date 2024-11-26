import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class TotalDataUsed extends StatelessWidget {
  const TotalDataUsed({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Column(
      children: [
        _threatAlertCards(
          'Total Data Used: 1.5 GB (Weekly).',
        ),
        SizedBox(
          height: scale.getScaledHeight(12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Data Usage Alerts",
              style: AppStyle.style2.copyWith(
                fontSize: scale.getScaledHeight(16),
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: scale.getScaledHeight(12),
        ),
        _threatAlertCards2(
          'Security Application: High Data Usage Detected. ',
          '(Last accessed: 2:30 PM)',
        ),
      ],
    );
  }

  Widget _threatAlertCards(String name) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(8)),
        child: Row(
          children: [
            Text(
              name,
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(11),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _threatAlertCards2(String name, String txt) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(11),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: scale.getScaledHeight(5),
            ),
            Text(
              txt,
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(9),
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
