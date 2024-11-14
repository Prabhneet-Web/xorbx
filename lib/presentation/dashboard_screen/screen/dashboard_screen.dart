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
                        color: Color.fromRGBO(165, 212, 225, 1),
                      ),
                    ),
                    SizedBox(width: scale.getScaledHeight(5)),
                    Text(
                      'Cyber Security Dashboard',
                      style: AppStyle.style2,
                    ),
                    const Spacer(flex: 1),
                    const Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.white,
                      size: 26,
                    ),
                    SizedBox(width: scale.getScaledHeight(10)),
                    GestureDetector(
                      onTap: () {},
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
                      'View Detailed Report',
                      AppRoutes.realTimeThreadDetectionScreen,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      AppPermissionChecker(),
                      'App Permission Checker',
                      'Review Permission',
                      AppRoutes.appPermissionChecker,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      NetworkSecurityAlert(),
                      'Network Security Alerts',
                      'See All Alerts',
                      AppRoutes.networkSecurityAlert,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      PhishingDetection(),
                      'Phishing Detection',
                      'View Detailed Analysis',
                      AppRoutes.phisingDetectionScreen,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      CompromisedPassword(),
                      'Compromised password',
                      'View Detailed List',
                      AppRoutes.compromisedPassword,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      DeviceHealthMonitoring(),
                      'Device Health Monitoring',
                      'View Detailed List',
                      AppRoutes.deviceHealthMonitoring,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      UserNotification(),
                      'Users Notifications',
                      'View All Notifications',
                      AppRoutes.userNotification,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    const DashboardCards(
                      CustomerFeedback(),
                      'Customer Feedback',
                      'Analyze Feedback',
                      AppRoutes.customerFeedback,
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
}
