import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/common_network_image.dart';

class RecommendedVideos extends StatelessWidget {
  const RecommendedVideos({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _items(
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(ScalingUtility scale) {
    return Stack(
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CommonNetworkImageView(
                url: ImageConstants.trainingModule,
                fit: BoxFit.cover,
                height: scale.getScaledHeight(200),
                width: scale.fw,
              ),
            ),
          ],
        ),
        Positioned(
          top: scale.getScaledHeight(70),
          left: scale.fw / 3,
          child: Center(
            child: CommonNetworkImageView(
              url: ImageConstants.play,
              height: scale.getScaledHeight(60),
              width: scale.getScaledHeight(60),
            ),
          ),
        )
      ],
    );
  }
}
