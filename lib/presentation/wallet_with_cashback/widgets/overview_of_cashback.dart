import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class OverviewOfCashback extends StatelessWidget {
  const OverviewOfCashback({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      height: scale.getScaledHeight(100),
      width: (scale.fw - scale.getScaledHeight(113)) / scale.getScaledHeight(2),
      child: Column(
        children: [
          Text(
            "Total Cash-back\nEarned:",
            style: AppStyle.style3.copyWith(fontSize: 12),
          ),
          SizedBox(width: scale.getScaledHeight(40)),
          Text(
            "\$ 2,000",
            style: AppStyle.style3
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
