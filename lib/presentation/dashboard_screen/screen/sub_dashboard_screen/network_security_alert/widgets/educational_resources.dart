import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class EducationalResources extends StatelessWidget {
  const EducationalResources({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _itemsSection1(),
          SizedBox(
            height: scale.getScaledHeight(16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Security Tips",
                style: AppStyle.style2.copyWith(
                  fontSize: scale.getScaledHeight(16),
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(10),
          ),
          _items(
            '*Top Tips for Securing Your Network at Home.*',
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  fixedSize: Size(
                      scale.getScaledHeight(240), scale.getScaledHeight(30)),
                  backgroundColor: ColorConstant.color3,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                child: Text(
                  'Watch Now',
                  style: AppStyle.style3.copyWith(
                    fontSize: scale.getScaledHeight(14),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemsSection1() {
    return ShadowBorderCard(
      content: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: scale.getScaledHeight(2),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Text(
                "Introduction to Network Security.",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(11),
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(7),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: scale.getScaledHeight(2),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Text(
                "Best Practices for Protecting Personal Data.",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(11),
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(7),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: scale.getScaledHeight(2),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Text(
                "Understanding Phishing and How to Avoid It.",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(11),
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(7),
          ),
          Row(
            children: [
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Text(
                "Expand for More ",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(11),
                  color: ColorConstant.color3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _items(String name, ScalingUtility scale) {
    return Column(
      children: [
        _itemsSection(name),
        SizedBox(
          height: scale.getScaledHeight(10),
        ),
      ],
    );
  }

  Widget _itemsSection(String name) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(5)),
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
}
