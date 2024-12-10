import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/sidebar_screen/dashboard_sidebar_screen/controller/dashboard_sidebar_controller.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/drop_down_options.dart';

class DashboardSidebarScreen extends GetWidget<DashboardSidebarController> {
  const DashboardSidebarScreen({super.key});

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
                          icon: Icons.description_outlined,
                          title: "Overview",
                          items: const [],
                          scale: scale,
                          onTap: () {
                            Get.toNamed(AppRoutes.overviewScreen);
                          },
                        ),
                        DropDownOptions(
                          icon: Icons.warning_amber_rounded,
                          title: "Security Alerts",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.book_outlined,
                          title: "Legal",
                          items: const [
                            "Copyright Policy",
                            "Terms & Conditions",
                            "Data Provider Attribution"
                          ],
                          scale: scale,
                          onItemTap: (item) {
                            if (item == "Copyright Policy") {
                              Get.toNamed(AppRoutes.privacyPolicyScreen);
                            } else if (item == "Terms & Conditions") {
                              Get.toNamed(AppRoutes.termsAndConditionsScreen);
                            }
                          },
                        ),
                        // DropDownOptions(
                        //   icon: Icons.settings_outlined,
                        //   title: "General Settings",
                        //   items: const [
                        //     "Language Preference",
                        //     "Arabic",
                        //     "English"
                        //   ],
                        //   scale: scale,
                        // ),
                        DropDownOptions(
                          icon: Icons.person_pin_outlined,
                          title: "Account Information",
                          items: const [
                            "Email address",
                            "Username",
                            "Profile picture"
                          ],
                          scale: scale,
                        ),
                        // DropDownOptions(
                        //   icon: Icons.dataset_outlined,
                        //   title: "Privacy Settings",
                        //   items: const [
                        //     "Eye",
                        //     "Fingerprint",
                        //     "Profile picture",
                        //   ],
                        //   scale: scale,
                        //   onItemTap: (item) {
                        //     if (item == "Eye") {
                        //       Get.toNamed(AppRoutes.captureEyeScreen);
                        //     } else if (item == "Fingerprint") {
                        //       Get.toNamed(AppRoutes.captureFingerprintScreen);
                        //     } else if (item == "Voice") {
                        //       Get.toNamed(AppRoutes.captureVoiceScreen);
                        //     }
                        //   },
                        // ),
                        // DropDownOptions(
                        //   icon: Icons.candlestick_chart_outlined,
                        //   title: "Security Settings",
                        //   items: const [
                        //     "Password Management",
                        //     "Biometric Security",
                        //     "Device Management",
                        //   ],
                        //   scale: scale,
                        //   onItemTap: (item) {
                        //     if (item == "Password Management") {
                        //       Get.toNamed(AppRoutes.passwordManagement);
                        //     } else if (item == "Device Management") {
                        //       Get.toNamed(AppRoutes.deviceManagement);
                        //     } else if (item == "Biometric Security") {
                        //       Get.toNamed(AppRoutes.biometricManagementScreen);
                        //     }
                        //   },
                        // ),
                        DropDownOptions(
                          icon: Icons.cloud_queue_outlined,
                          title: "Data Management",
                          items: const [
                            // "Backup & Sync",
                            "Data Usage",
                            // "Clear Cache/Data"
                          ],
                          scale: scale,
                          onItemTap: (item) {
                            if (item == "Data Usage") {
                              Get.toNamed(AppRoutes.dataUsageScreen);
                            }
                          },
                        ),
                        DropDownOptions(
                          icon: Icons.person_pin_outlined,
                          title: "Account Management",
                          items: const [
                            "Subscription Information",
                            "Payment Methods",
                            "Wallet with cashback",
                            "Referral",
                            "Training",
                          ],
                          scale: scale,
                          onItemTap: (item) {
                            if (item == "Wallet with cashback") {
                              Get.toNamed(AppRoutes.walletWithCashbackScreen);
                            } else if (item == "Referral") {
                              Get.toNamed(AppRoutes.referralScreen);
                            } else if (item == "Subscription Information") {
                              Get.toNamed(AppRoutes.subscriptionPlan);
                            } else if (item == "Payment Methods") {
                              Get.toNamed(AppRoutes.paymentMethods);
                            } else if (item == "Training") {
                              Get.toNamed(AppRoutes.training);
                            }
                          },
                        ),
                        DropDownOptions(
                          icon: Icons.message_outlined,
                          title: "Support & Feedback",
                          items: const [
                            "Help & Support",
                            "Send Feedback",
                            "App Version Info"
                          ],
                          scale: scale,
                          onItemTap: (item) {
                            if (item == "Send Feedback") {
                              Get.toNamed(AppRoutes.customerFeedback);
                            }
                          },
                        ),
                        DropDownOptions(
                          icon: Icons.logout_outlined,
                          title: "Logout",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.copyright_outlined,
                          title: "Version History",
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
