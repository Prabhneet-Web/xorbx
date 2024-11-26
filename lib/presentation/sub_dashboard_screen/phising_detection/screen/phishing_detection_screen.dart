import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/controller/phishing_detection_controller.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/alert_preferences.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/alerts_by_severity.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/alerts_table.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/api_response_codes.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/collapsible_alert_cards.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/confidence_score.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/educational_links.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/historical_data.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/malware_presence_badge.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/real_time_alerts.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/threat_level_indicator.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/total_alerts.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/user_controls.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/user_feedback.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/widgets/user_response_time.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';

class PhishingDetectionScreen extends GetWidget<PhishingDetectionController> {
  const PhishingDetectionScreen({super.key});

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
                          'Phishing Detection\nDashboard',
                          style: AppStyle.style2,
                        ),
                        const Spacer(),
                        _overlayText("Last Synced:", "September 01, 2024"),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(5)),
                  Text(
                    "Phishing Detection Alerts",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    AlertsTable(),
                    'Alerts Table',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    "Email/Link Details",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    CollapsibleAlertCards(),
                    'Collapsible Alert Cards',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    "Risk Assessment",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    ThreatLevelIndicator(),
                    'Threat Level Indicator',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    ConfidenceScore(),
                    'Confidence Score',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    MalwarePresenceBadge(),
                    'Malware Presence Badge',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Actions Taken',
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    UserControls(),
                    'User Controls',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    "User Engagement",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    UserFeedback(),
                    'User Feedback',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    UserResponseTime(),
                    'User Response Time',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    "Alerts by Severity",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const DashboardCards(
                        AlertsBySeverity(),
                        'Alerts by Severity',
                        AppRoutes.realTimeThreadDetectionScreen,
                      ),
                      SizedBox(width: scale.getScaledHeight(16)),
                      const DashboardCards(
                        TotalAlerts(),
                        'Total Alerts',
                        AppRoutes.realTimeThreadDetectionScreen,
                      ),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    HistoricalData(),
                    'Historical Data',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    "Best Practices & Resources",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    EducationalLinks(),
                    'Educational Links',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    "Integration & API Information",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  _overlayTextDashboardCards(
                    const DashboardCards(
                      ApiResponseCodes(),
                      'API Response Codes',
                      AppRoutes.realTimeThreadDetectionScreen,
                    ),
                    "Last Synced:",
                    "September 01, 2024",
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    "User Notifications ",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    RealTimeAlerts(),
                    'Real-Time Alerts',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    "User Settings ",
                    style: AppStyle.style2.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    AlertPreferences(),
                    'Alert Preferences',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(50)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _overlayTextDashboardCards(Widget content, String name, String date) {
    return Stack(
      children: [
        content,
        _overlayText(name, date),
      ],
    );
  }

  Widget _overlayText(String name, String date) {
    return Positioned(
      top: scale.getScaledHeight(10),
      right: scale.getScaledHeight(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
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
                name,
                style: AppStyle.style2.copyWith(
                    color: Colors.white60,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
            ],
          ),
          Text(
            date,
            style: const TextStyle(
              color: Colors.white60,
              fontSize: 8,
            ),
          ),
        ],
      ),
    );
  }
}
