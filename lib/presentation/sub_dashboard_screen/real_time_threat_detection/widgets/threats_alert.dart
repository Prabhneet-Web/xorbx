import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class ThreatsAlert extends StatelessWidget {
  const ThreatsAlert({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Column(
      children: [
        _threatAlertCards(
          'Malware Attack',
          Colors.red,
        ),
        SizedBox(
          height: scale.getScaledHeight(12),
        ),
        _threatAlertCards(
          'Phishing Attack',
          Colors.orange,
        ),
        SizedBox(
          height: scale.getScaledHeight(12),
        ),
        _threatAlertCards(
          'Cyber Attack',
          Colors.green,
        ),
      ],
    );
  }

  Widget _threatAlertCards(String name, Color color) {
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
                    const Icon(
                      Icons.refresh,
                      size: 11,
                      color: Colors.white60,
                    ),
                    SizedBox(
                      width: scale.getScaledHeight(2),
                    ),
                    Text(
                      "Last Synced:",
                      style: AppStyle.style2.copyWith(
                          color: Colors.white60,
                          fontWeight: FontWeight.normal,
                          fontSize: scale.getScaledHeight(11)),
                    ),
                  ],
                ),
                Text(
                  "September 01, 2024",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: scale.getScaledHeight(7),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    'A Malware Attack infiltrates and damages systems',
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
