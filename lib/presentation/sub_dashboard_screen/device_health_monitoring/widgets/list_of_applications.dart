import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class ListOfApplications extends StatelessWidget {
  const ListOfApplications({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      height: scale.getScaledHeight(130),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _items(
                Colors.green,
                const Icon(
                  Icons.shield_moon,
                  color: Colors.white,
                  size: 17,
                ),
                "No Malware",
                const Icon(
                  Icons.check_circle_outline_rounded,
                  size: 17,
                  color: Colors.green,
                ),
                scale,
              ),
            ],
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Application A",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(8),
                  ),
                ),
                Text(
                  "CPU: 85% ",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(8),
                  ),
                ),
                Text(
                  "RAM: 45%",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(8),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Application B",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(8),
                  ),
                ),
                Text(
                  "CPU: 85% ",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(8),
                  ),
                ),
                Text(
                  "RAM: 45%",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(8),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Application C",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(8),
                  ),
                ),
                Text(
                  "CPU: 85% ",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(8),
                  ),
                ),
                Text(
                  "RAM: 45%",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _items(Color color, Icon icon, String txt, Icon innerIcon,
      ScalingUtility scale) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: scale.getScaledHeight(220),
          child: Image.asset(
            "assets/images/cpu_usage.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
