import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/controller/dashboard_controller.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/inner_widgets/app_permission_checker.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/inner_widgets/compromised_password.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/inner_widgets/customer_feedback.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/inner_widgets/device_health_monitoring.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/inner_widgets/network_security_alert.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/inner_widgets/phishing_detection.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/inner_widgets/user_notification.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/inner_widgets/heat_map.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DashboardScreen extends GetWidget<DashboardController> {
  const DashboardScreen({super.key});

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
                        Get.toNamed(AppRoutes.dashboardSidebarScreen);
                      },
                      icon: const Icon(
                        Icons.menu_outlined,
                        color: ColorConstant.color4,
                      ),
                    ),
                    SizedBox(width: scale.getScaledHeight(5)),
                    Text(
                      'Cyber Security Dashboard',
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
                        _showPopup(context);
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
                    const DashboardCards(
                      HeatMap(),
                      'Real-Time Threat Detection',
                      buttonTitle: 'View Detailed Report',
                      AppRoutes.realTimeThreadDetectionScreen,
                      isButtonNeed: true,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      AppPermissionChecker(),
                      'App Permission Checker',
                      buttonTitle: 'Review Permission',
                      AppRoutes.appPermissionChecker,
                      isButtonNeed: true,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      NetworkSecurityAlert(),
                      'Network Security Alerts',
                      buttonTitle: 'See All Alerts',
                      AppRoutes.networkSecurityAlert,
                      isButtonNeed: true,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      PhishingDetection(),
                      'Phishing Detection',
                      buttonTitle: 'View Detailed Analysis',
                      AppRoutes.phisingDetectionScreen,
                      isButtonNeed: true,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      CompromisedPassword(),
                      'Compromised password',
                      buttonTitle: 'View Detailed List',
                      AppRoutes.compromisedPassword,
                      isButtonNeed: true,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      DeviceHealthMonitoring(),
                      'Device Health Monitoring',
                      buttonTitle: 'View Detailed List',
                      AppRoutes.deviceHealthMonitoring,
                      isButtonNeed: true,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      UserNotification(),
                      'Users Notifications',
                      buttonTitle: 'View All Notifications',
                      AppRoutes.userNotification,
                      isButtonNeed: true,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      CustomerFeedback(),
                      'Customer Feedback',
                      buttonTitle: 'Analyze Feedback',
                      AppRoutes.customerFeedback,
                      isButtonNeed: true,
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

  void _showPopup(BuildContext context) {
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
                top: 90,
                right: 30,
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: 160,
                    child: ShadowBorderCard(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.logout_outlined,
                                color: ColorConstant.color4,
                                size: 19,
                              ),
                              const SizedBox(width: 10),
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
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.settings,
                                color: ColorConstant.color4,
                                size: 18,
                              ),
                              const SizedBox(width: 10),
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
                          const SizedBox(height: 20),
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
