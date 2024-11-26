import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class CollapsibleAlertCards extends StatelessWidget {
  const CollapsibleAlertCards({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Padding(
      padding: EdgeInsets.all(scale.getScaledHeight(8)),
      child: Container(
        color: ColorConstant.color1,
        child: Column(
          children: [
            _items(scale),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale),
          ],
        ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sender:",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Text(
                  "Recipient: ",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Text(
                  "Subject: ",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Text(
                  "Expanded View",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(20)),
                Text(
                  "Link URL: ",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Text(
                  "Timestamp: ",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "uspicious@unknown.com",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Text(
                  "user@domain.com",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Text(
                  "Urgent Account Verification.",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Text(
                  "",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(20)),
                Text(
                  "http://suspicious-site.com.",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Text(
                  "10/25/2024  9:05 AM.",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
