import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/semi_circular_progress_indicator.dart';

class RamUsage extends StatelessWidget {
  const RamUsage({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SemiCircularProgressIndicator(
            progress: 0.78,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}