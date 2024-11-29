import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class UserTestimonials extends StatelessWidget {
  const UserTestimonials({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _itemsSection(
            "“ Best Investment Ever ”",
          ),
          SizedBox(height: scale.getScaledHeight(16)),
          _itemsSection(
            "“ Design is a bridge that connects everyone\nand everything ”",
          ),
        ],
      ),
    );
  }

  Widget _itemsSection(String name) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(5)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ImageConstants.person),
                  radius: scale.getScaledHeight(13),
                ),
                SizedBox(width: scale.getScaledHeight(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shaveer",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(12),
                      ),
                    ),
                    Text(
                      "UX Designer, Company Name",
                      style: AppStyle.style1.copyWith(
                          fontSize: scale.getScaledHeight(10),
                          color: Colors.white38),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            Text(
              name,
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
