import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/settings/controller/settings_controller.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/drop_down_options.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({super.key});

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
                          icon: Icons.settings_outlined,
                          title: "General Settings",
                          items: const [
                            "Language Preference",
                            "Arabic",
                            "English"
                          ],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.dataset_outlined,
                          title: "Privacy Settings",
                          items: const [
                            "Eye",
                            "Fingerprint",
                            "Profile picture",
                          ],
                          scale: scale,
                          onItemTap: (item) {
                            if (item == "Eye") {
                              Get.toNamed(AppRoutes.captureEyeScreen);
                            } else if (item == "Fingerprint") {
                              Get.toNamed(AppRoutes.captureFingerprintScreen);
                            } else if (item == "Voice") {
                              Get.toNamed(AppRoutes.captureVoiceScreen);
                            }
                          },
                        ),
                        DropDownOptions(
                          icon: Icons.candlestick_chart_outlined,
                          title: "Security Settings",
                          items: const [
                            "Password Management",
                            "Biometric Security",
                            "Device Management",
                          ],
                          scale: scale,
                          onItemTap: (item) {
                            if (item == "Password Management") {
                              Get.toNamed(AppRoutes.passwordManagement);
                            } else if (item == "Device Management") {
                              Get.toNamed(AppRoutes.deviceManagement);
                            } else if (item == "Biometric Security") {
                              Get.toNamed(AppRoutes.biometricManagementScreen);
                            }
                          },
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
