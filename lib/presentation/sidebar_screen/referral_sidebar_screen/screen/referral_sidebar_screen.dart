import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/sidebar_screen/referral_sidebar_screen/controller/referral_sidebar_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/drop_down_options.dart';

class ReferralSidebarScreen extends GetWidget<ReferralSidebarController> {
  const ReferralSidebarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          SafeArea(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: scale.getScaledHeight(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: scale.getScaledHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: scale.getScaledHeight(10)),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  CommonNetworkImageView(
                    url: ImageConstants.xorbx,
                    height: scale.getScaledHeight(40),
                    width: scale.getScaledHeight(82),
                  ),
                  SizedBox(height: scale.getScaledHeight(30)),
                  Expanded(
                    child: ListView(
                      children: [
                        DropDownOptions(
                          icon: Icons.home_outlined,
                          title: "Home",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.person,
                          title: "Referrals",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.wallet_outlined,
                          title: "Wallet",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.monetization_on_outlined,
                          title: "Rewards",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.message_outlined,
                          title: "Support",
                          items: const [],
                          scale: scale,
                        ),
                        SizedBox(height: scale.getScaledHeight(120)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
