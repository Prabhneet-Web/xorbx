import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DownloadableMaterials extends StatelessWidget {
  const DownloadableMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          Text(
            'Downloadable Materials',
            style: AppStyle.style2.copyWith(
              fontSize: scale.getScaledHeight(16),
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: scale.getScaledHeight(10)),
          _itemsSection(),
          SizedBox(
            height: scale.getScaledHeight(16),
          ),
          _itemsSection(),
          SizedBox(
            height: scale.getScaledHeight(16),
          ),
        ],
      ),
    );
  }

  Widget _itemsSection() {
    return ShadowBorderCard(
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonNetworkImageView(url: ImageConstants.pdf),
              Text(
                "Data Security Checklist: Protect\nYour Accounts.",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(11),
                ),
              ),
              CommonNetworkImageView(
                url: ImageConstants.download,
                height: scale.getScaledHeight(20),
                width: scale.getScaledHeight(20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
