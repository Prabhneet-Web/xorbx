import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/presentation/security_screen/capture_fingerprint/controller/capture_fingerprint_controller.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';
import 'package:xorbx/widgets/successful_scan.dart';

class CaptureFingerprintScreen extends GetWidget<CaptureFingerprintController> {
  const CaptureFingerprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          Padding(
            padding: EdgeInsets.all(scale.getScaledHeight(16)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: scale.getScaledHeight(15),
                    top: scale.getScaledHeight(35),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.chevron_left_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Fingerprint Recognition',
                            style: AppStyle.style2,
                          ),
                        ],
                      ),
                      SizedBox(width: scale.getScaledHeight(5)),
                      const Text("")
                    ],
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(5)),
                ShadowBorderCard(
                  content: SizedBox(
                    height: 400,
                    width: 300,
                    child: CommonNetworkImageView(url: ImageConstants.frame),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(25)),
                Text(
                  "Hold on to the camera",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(45)),
                _customButton(
                    scale, AppRoutes.captureEyeScreen, "Recognize Fingerprint"),
                SizedBox(height: scale.getScaledHeight(50)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _customButton(ScalingUtility scale, String route, String buttonTitle) {
    return Center(
      child: SizedBox(
        width: scale.getScaledHeight(240),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstant.color4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(scale.getScaledHeight(6)),
              ),
            ),
          ),
          onPressed: () {
            Get.dialog(successfulScan(title: "Successful Scan!"));
          },
          child: Text(
            buttonTitle,
            style: const TextStyle(
              color: ColorConstant.color1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
