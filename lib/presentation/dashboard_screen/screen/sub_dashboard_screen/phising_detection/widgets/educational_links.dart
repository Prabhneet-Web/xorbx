import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class EducationalLinks extends StatelessWidget {
  const EducationalLinks({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(scale),
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
                  'Report Phishing',
                  style: AppStyle.style3.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _items(ScalingUtility scale) {
    return ShadowBorderCard(
      content: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Phishing Awareness Guide",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(10),
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
              SizedBox(height: scale.getScaledHeight(15)),
              Text(
                "Prevention Video",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(10),
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
              SizedBox(height: scale.getScaledHeight(15)),
              Text(
                "Tips & Tricks ",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(10),
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
              SizedBox(height: scale.getScaledHeight(15)),
              Text(
                "Identifying Phishing",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(10),
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
