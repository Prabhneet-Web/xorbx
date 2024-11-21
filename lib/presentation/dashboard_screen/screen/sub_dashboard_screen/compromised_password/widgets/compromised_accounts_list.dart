import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class CompromisedAccountsList extends StatelessWidget {
  const CompromisedAccountsList({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return ShadowBorderCard(
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: ColorConstant.color1,
          child: Column(
            children: [
              _items(scale),
              SizedBox(
                height: scale.getScaledHeight(12),
              ),
              _items(scale),
              SizedBox(
                height: scale.getScaledHeight(12),
              ),
              _items(scale),
            ],
          ),
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Account Name:",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
                Text(
                  " Banking Account",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Email Address:",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
                Text(
                  "abc@gmail.com",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date Compromised:",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
                Text(
                  "November 15, 2024",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Last Password Change:",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
                Text(
                  "November 05, 2024",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
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
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
                Text(
                  "Action Required",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    fixedSize: Size(
                        scale.getScaledHeight(190), scale.getScaledHeight(30)),
                    backgroundColor: ColorConstant.color3,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  child: Text(
                    'Reset Password',
                    style: AppStyle.style3.copyWith(
                      fontSize: scale.getScaledHeight(9),
                    ),
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
