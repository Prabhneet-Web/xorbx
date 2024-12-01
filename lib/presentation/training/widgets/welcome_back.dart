import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/common_network_image.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Welcome Back Sara !",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(15),
                    ),
                  ),
                ],
              ),
              SizedBox(height: scale.getScaledHeight(12)),
              Row(
                children: [
                  Text(
                    "You're doing great! Keep\nup the momentum!",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(10),
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
              SizedBox(height: scale.getScaledHeight(12)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: scale.getScaledHeight(30)),
              CommonNetworkImageView(
                url: ImageConstants.training,
                fit: BoxFit.cover,
                height: 100,
                width: scale.fw / 4,
              ),
              SizedBox(height: scale.getScaledHeight(12)),
            ],
          ),
        ],
      ),
    );
  }
}
