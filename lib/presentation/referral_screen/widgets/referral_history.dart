import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class ReferralHistory extends StatelessWidget {
  const ReferralHistory({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Padding(
      padding: EdgeInsets.all(scale.getScaledHeight(8)),
      child: Container(
        color: ColorConstant.color1,
        child: Column(
          children: [
            _items(scale, "John Doe"),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Jane Smith"),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Alex Johnson"),
          ],
        ),
      ),
    );
  }

  Widget _items(ScalingUtility scale, String txt) {
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
                  "Friend's Name:",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bonus Earned:",
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
                      "Status:",
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
                      "Date:",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(9),
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
                          txt,
                          style: AppStyle.style1.copyWith(
                            fontSize: scale.getScaledHeight(9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$10",
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
                    Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 12,
                          color: Colors.green,
                        ),
                        SizedBox(width: scale.getScaledHeight(5)),
                        Text(
                          "Successful",
                          style: AppStyle.style1.copyWith(
                            fontSize: scale.getScaledHeight(9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "2024-11-15",
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
