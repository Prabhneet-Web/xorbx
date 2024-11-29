import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/semi_circular_progress_indicator.dart';
import 'package:xorbx/widgets/shadow_card.dart';

Widget successfulScan({required String? title}) {
  var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(Get.context!);
  return AlertDialog(
    contentPadding: EdgeInsets.zero,
    content: CommonShadowWidget(
        dynamicChild: SizedBox(
      height: scale.getScaledHeight(500),
      width: scale.fw,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: SemiCircularProgressIndicator(
              progress: 1,
              color: Colors.green,
            ),
          ),
          Center(
              child: Text(title ?? "",
                  style: AppStyle.style2
                      .copyWith(fontSize: scale.getScaledFont(20)),
                  textAlign: TextAlign.center)),
          SizedBox(height: scale.getScaledHeight(36)),
          Text(
              "Your scan was successful! All systems are functioning normally. No issues detected at this time.",
              style: AppStyle.style1.copyWith(fontWeight: FontWeight.w500)),
          SizedBox(height: scale.getScaledHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  Get.back();
                },
                style: TextButton.styleFrom(
                  fixedSize:
                      Size(scale.getScaledWidth(80), scale.getScaledHeight(30)),
                  backgroundColor: ColorConstant.greyButton,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                child: Text(
                  'Cancel',
                  style: AppStyle.style3.copyWith(
                    fontSize: scale.getScaledHeight(14),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  fixedSize:
                      Size(scale.getScaledWidth(80), scale.getScaledHeight(30)),
                  backgroundColor: ColorConstant.color3,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                child: Text(
                  'Ok',
                  style: AppStyle.style3.copyWith(
                    fontSize: scale.getScaledHeight(14),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    )),
  );
}