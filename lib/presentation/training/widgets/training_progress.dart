import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/custom_pie_chart.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class TrainingProgress extends StatelessWidget {
  const TrainingProgress({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Padding(
      padding: EdgeInsets.all(scale.getScaledHeight(8)),
      child: Container(
        color: ColorConstant.color1,
        child: Column(
          children: [
            ShadowBorderCard(
              content: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: scale.getScaledHeight(15),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Training Progress Overview',
                          style: AppStyle.style2.copyWith(
                            fontSize: scale.getScaledHeight(16),
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _colorAndTextRow('Completed', Colors.green),
                            _colorAndTextRow('Not Completed.', Colors.white70),
                            _colorAndTextRow('Upcoming.', Colors.orange),
                          ],
                        ),
                        const CustomPieChart(
                          percentage: 65,
                          color1: Colors.orange,
                          color2: Colors.green,
                          color3: Colors.white70,
                          radius: 15,
                        ),
                      ],
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                  ],
                ),
              ),
            ),
            SizedBox(height: scale.getScaledHeight(20)),
            Row(
              children: [
                Text(
                  'Completed Modules',
                  style: AppStyle.style2.copyWith(
                    fontSize: scale.getScaledHeight(16),
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            _items(
              scale,
              "Module 1: Introduction",
              "Date: Oct 15, 2024",
              "Action: Review Module",
            ),
            SizedBox(height: scale.getScaledHeight(16)),
            _items(
              scale,
              "Module 1: Introduction",
              "Date: Oct 15, 2024",
              "Action: Review Module",
            ),
            SizedBox(height: scale.getScaledHeight(16)),
            Row(
              children: [
                Text(
                  'Upcoming Modules',
                  style: AppStyle.style2.copyWith(
                    fontSize: scale.getScaledHeight(16),
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            _items(
              scale,
              "Module 1: Introduction",
              "Date: Oct 15, 2024",
              "Action: Review Module",
            ),
            SizedBox(height: scale.getScaledHeight(6)),
          ],
        ),
      ),
    );
  }

  Widget _colorAndTextRow(String label, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: color,
            size: 11,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            label,
            style: AppStyle.style1.copyWith(
              fontSize: 9,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  Widget _items(ScalingUtility scale, String name, String txt, String action) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          vertical: scale.getScaledHeight(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(13),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      txt,
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(9),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      action,
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(9),
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
