import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/controller/user_notification_controller.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/widgets/detailed_breakdown.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/widgets/immediate_alerts_section.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/widgets/metric_representation.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/widgets/metric_representation_2.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/widgets/notification_panel.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/widgets/total_security_alerts_count.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';

class UserNotificationScreen extends GetWidget<UserNotificationController> {
  const UserNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(scale.getScaledHeight(16)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: scale.getScaledHeight(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.toNamed(
                                AppRoutes.userNotificationSidebarScreen);
                          },
                          icon: const Icon(
                            Icons.menu_outlined,
                            color: ColorConstant.color4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: scale.getScaledHeight(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                        Text(
                          'User Notifications\nDashboard',
                          style: AppStyle.style2,
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.refresh,
                                  size: 13,
                                  color: Colors.white60,
                                ),
                                SizedBox(width: scale.getScaledHeight(2)),
                                Text(
                                  "Last Synced:",
                                  style: AppStyle.style2.copyWith(
                                      color: Colors.white60,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            const Text(
                              "September 01, 2024",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(5)),
                  Text(
                    "Notifications",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    NotificationPanel(),
                    'Notification Panel',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    MetricRepresentation(),
                    'Metric Representation',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Reports',
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  Stack(
                    children: [
                      const DashboardCards(
                        TotalSecurityAlertsCount(),
                        'Total Security Alerts Count',
                        AppRoutes.realTimeThreadDetectionScreen,
                      ),
                      Positioned(
                        top: scale.getScaledHeight(10),
                        right: scale.getScaledHeight(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Timestamp:",
                                  style: AppStyle.style2.copyWith(
                                      color: Colors.white60,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            Text(
                              "November 07, 2024",
                              style: AppStyle.style3.copyWith(
                                color: Colors.white60,
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    DetailedBreakdown(),
                    'Detailed Breakdown',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    MetricRepresentation2(),
                    'Metric Representation',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    "Real-time Alerts",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    ImmediateAlertsSection(),
                    'Immediate Alerts Section',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(36)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
