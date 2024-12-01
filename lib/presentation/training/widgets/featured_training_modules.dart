import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class FeaturedTrainingModules extends StatelessWidget {
  const FeaturedTrainingModules({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _items(
              "Introduction to\nCybersecurity",
              "Learn to protect\nyour data online.",
              scale,
            ),
            _items(
              "Leadership\nEssentials",
              "Develop skills to\nlead teams.",
              scale,
            ),
          ],
        ),
        SizedBox(height: scale.getScaledHeight(16)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _items(
              "Data Analysis\nFundamentals",
              "Master data\nanalysis basics.",
              scale,
            ),
            _items(
              "Data Management\nFundamentals",
              "Master data\nmanagement basics.",
              scale,
            ),
          ],
        ),
      ],
    );
  }

  Widget _items(String name, String txt, ScalingUtility scale) {
    return ShadowBorderCard(
      content: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CommonNetworkImageView(
              url: ImageConstants.trainingModule,
              fit: BoxFit.cover,
              height: 90,
              width: scale.fw / 3,
            ),
          ),
          SizedBox(height: scale.getScaledHeight(12)),
          Row(
            children: [
              Text(
                name,
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(14),
                ),
              ),
            ],
          ),
          SizedBox(height: scale.getScaledHeight(6)),
          Row(
            children: [
              Text(
                txt,
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                  color: Colors.white60,
                ),
              ),
            ],
          ),
          SizedBox(height: scale.getScaledHeight(6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: ColorConstant.color3,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Start Now',
                    style: AppStyle.style3.copyWith(
                      fontSize: scale.getScaledHeight(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: scale.getScaledHeight(6)),
        ],
      ),
    );
  }
}
