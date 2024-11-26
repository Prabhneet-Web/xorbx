import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class AlertsList extends StatelessWidget {
  const AlertsList({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Column(
      children: [
        _threatAlertCards(
          'Students_XI',
          'WiFi',
          Colors.red,
        ),
        SizedBox(
          height: scale.getScaledHeight(6),
        ),
        Text(
          'Switch to a secure network',
          style: AppStyle.style1.copyWith(
            fontSize: scale.getScaledHeight(9),
            color: Colors.white54,
          ),
        ),
        SizedBox(
          height: scale.getScaledHeight(12),
        ),
        _threatAlertCards(
          'Infinix hot 8',
          'Cellular',
          Colors.red,
        ),
        SizedBox(
          height: scale.getScaledHeight(6),
        ),
        Text(
          'Switch to a secure networkt',
          style: AppStyle.style1.copyWith(
            fontSize: scale.getScaledHeight(9),
            color: Colors.white54,
          ),
        ),
        SizedBox(
          height: scale.getScaledHeight(12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Alerts Summary:",
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
          '2 high Alerts Categorized.',
        ),
      ],
    );
  }

  Widget _threatAlertCards(String name, String txt, Color color) {
    return ShadowBorderCard(
      content: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Last accessed:",
                      style: AppStyle.style2.copyWith(
                          color: Colors.white60,
                          fontWeight: FontWeight.normal,
                          fontSize: scale.getScaledHeight(8)),
                    ),
                  ],
                ),
                Text(
                  "2:30 PM",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: scale.getScaledHeight(8),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: scale.getScaledHeight(5),
                backgroundColor: color,
              ),
              SizedBox(
                width: scale.getScaledHeight(5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: scale.getScaledHeight(10),
                  ),
                  Text(
                    name,
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(12),
                    ),
                  ),
                  Text(
                    'Network Type: $txt',
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _threatAlertCards2(String name) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.all(scale.getScaledHeight(8)),
        child: Row(
          children: [
            Text(
              name,
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
