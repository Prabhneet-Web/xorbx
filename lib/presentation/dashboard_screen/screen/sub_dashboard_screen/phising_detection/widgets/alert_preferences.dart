import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class AlertPreferences extends StatelessWidget {
  const AlertPreferences({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _items2(scale),
          SizedBox(height: scale.getScaledHeight(16)),
          Text(
            "Notification Settings",
            style: AppStyle.style2.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(height: scale.getScaledHeight(10)),
          _items(scale),
        ],
      ),
    );
  }

  Widget _items(ScalingUtility scale) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          vertical: scale.getScaledHeight(5),
          horizontal: scale.getScaledHeight(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "In-App Alerts",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Email Summaries",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(12),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Email Summaries",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Sound : On",
                          style: AppStyle.style1.copyWith(
                            fontSize: scale.getScaledHeight(9),
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(14)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Detail View",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(9),
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(14)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quiet Hours: 10pm-6am",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(9),
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _items2(ScalingUtility scale) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          vertical: scale.getScaledHeight(5),
          horizontal: scale.getScaledHeight(15),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Frequency",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
                ),
                const Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size: 18,
                )
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Phishing Alerts",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Switch(
                      value: false,
                      activeColor: ColorConstant.color4,
                      inactiveThumbColor: ColorConstant.color4,
                      activeTrackColor: ColorConstant.color3,
                      inactiveTrackColor: ColorConstant.color3,
                      onChanged: (bool value) {},
                    ),
                    const Positioned(
                      right: 15,
                      child: Text(
                        'ON',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Suspicious Logins",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Switch(
                      value: false,
                      activeColor: ColorConstant.color4,
                      inactiveThumbColor: ColorConstant.color4,
                      activeTrackColor: ColorConstant.color3,
                      inactiveTrackColor: ColorConstant.color3,
                      onChanged: (bool value) {},
                    ),
                    const Positioned(
                      right: 15,
                      child: Text(
                        'ON',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Data Export Alerts",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
                ),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Switch(
                      value: true,
                      activeColor: ColorConstant.color4,
                      inactiveThumbColor: ColorConstant.color4,
                      activeTrackColor: ColorConstant.color3,
                      inactiveTrackColor: ColorConstant.color3,
                      onChanged: (bool value) {},
                    ),
                    const Positioned(
                      left: 9,
                      child: Text(
                        'OFF',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
