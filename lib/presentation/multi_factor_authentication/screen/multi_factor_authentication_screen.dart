import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/multi_factor_authentication/controller/multi_factor_authentication_controller.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class MultiFactorAuthenticationScreen
    extends GetWidget<MultiFactorAuthenticationController> {
  const MultiFactorAuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(dynamicChildren: [
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: scale.getScaledHeight(45),
                  bottom: scale.getScaledHeight(25),
                  left: scale.getScaledHeight(5),
                  right: scale.getScaledHeight(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.chevron_left_outlined,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: scale.getScaledHeight(5)),
                    Text(
                      'Multi-Factor Authentication',
                      style: AppStyle.style2,
                    ),
                    const Spacer(flex: 1),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.customerFeedback);
                      },
                      icon: const Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    SizedBox(width: scale.getScaledHeight(10)),
                    GestureDetector(
                      onTap: () {
                        showPopup(context);
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage(ImageConstants.person),
                        radius: scale.getScaledHeight(16),
                      ),
                    ),
                    SizedBox(width: scale.getScaledHeight(10)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    SizedBox(
                        height: scale.getScaledHeight(260),
                        width: scale.getScaledHeight(300),
                        child:
                            CommonNetworkImageView(url: ImageConstants.shield)),
                    SizedBox(height: scale.getScaledHeight(20)),
                    ShadowBorderCard(
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: ColorConstant.color1,
                          child: Column(
                            children: [
                              _items(
                                scale,
                                "Authenticate using facial recognition.",
                                "Use Face Recognition",
                                const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                AppRoutes.captureEyeScreen,
                              ),
                              SizedBox(
                                height: scale.getScaledHeight(12),
                              ),
                              _items(
                                scale,
                                "Authenticate using your iris pattern.",
                                "Use Eye Recognition",
                                const Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                AppRoutes.captureEyeScreen,
                              ),
                              SizedBox(
                                height: scale.getScaledHeight(12),
                              ),
                              _items(
                                scale,
                                "Authenticate using your fingerprint.",
                                "Use Fingerprint Scan",
                                const Icon(
                                  Icons.fingerprint,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                AppRoutes.captureFingerprintScreen,
                              ),
                              SizedBox(
                                height: scale.getScaledHeight(12),
                              ),
                              _items(
                                scale,
                                "Authenticate using your voice.",
                                "Use Voice Recognition",
                                const Icon(
                                  Icons.voice_chat,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                AppRoutes.captureVoiceScreen,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _items(
      ScalingUtility scale, String name, String txt, Icon icon, String route) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          vertical: scale.getScaledHeight(5),
        ),
        child: Column(
          children: [
            Row(
              children: [
                icon,
                SizedBox(width: scale.getScaledHeight(5)),
                Text(
                  name,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Get.toNamed(route);
                  },
                  style: TextButton.styleFrom(
                    fixedSize: Size(
                        scale.getScaledHeight(190), scale.getScaledHeight(30)),
                    backgroundColor: ColorConstant.color3,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  child: Text(
                    txt,
                    style: AppStyle.style3.copyWith(
                      fontSize: scale.getScaledHeight(12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showPopup(BuildContext context) {
    OverlayEntry? overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            overlayEntry?.remove();
          },
          child: Stack(
            children: [
              Container(
                color: Colors.transparent,
              ),
              Positioned(
                top: scale.getScaledHeight(90),
                right: scale.getScaledHeight(30),
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: scale.getScaledHeight(110),
                    child: ShadowBorderCard(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.logout_outlined,
                                color: ColorConstant.color4,
                                size: 19,
                              ),
                              SizedBox(width: scale.getScaledHeight(10)),
                              Text(
                                "LogOut",
                                style: AppStyle.style3.copyWith(
                                  fontSize: 12,
                                  color: Colors.white70,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: scale.getScaledHeight(10)),
                          Row(
                            children: [
                              const Icon(
                                Icons.settings,
                                color: ColorConstant.color4,
                                size: 18,
                              ),
                              SizedBox(width: scale.getScaledHeight(10)),
                              Text(
                                "Settings",
                                style: AppStyle.style3.copyWith(
                                  fontSize: 12,
                                  color: Colors.white70,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    Navigator.of(context).overlay!.insert(overlayEntry);
  }
}
