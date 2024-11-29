import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/app_permission_checker/widgets/line_graph.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/app_permission_checker/widgets/overall_privacy_score.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/network_security_alert/controller/network_security_alert_controller.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/network_security_alert/widgets/alerts_list.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/network_security_alert/widgets/educational_resources.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/network_security_alert/widgets/network_information_card.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/network_security_alert/widgets/recent_alert_list.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/network_security_alert/widgets/security_tips.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/network_security_alert/widgets/total_data_used.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/overlay_text.dart';

class NetworkSecurityAlertScreen
    extends GetWidget<NetworkSecurityAlertController> {
  const NetworkSecurityAlertScreen({super.key});

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
                    padding: EdgeInsets.only(
                      bottom: scale.getScaledHeight(15),
                      top: scale.getScaledHeight(35),
                    ),
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
                        Column(
                          children: [
                            SizedBox(height: scale.getScaledHeight(10)),
                            Text(
                              'Network Security Alerts\nDashboard',
                              style: AppStyle.style2,
                            ),
                          ],
                        ),
                        const Spacer(),
                        _overlayText("Last Synced:", "September 01, 2024"),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  Text(
                    'Current Network Status',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    NetworkInformationCard(),
                    'Network Information Card',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Security Alerts',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    AlertsList(),
                    'Alerts List',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Data Usage Monitoring',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    TotalDataUsed(),
                    'Total Data Used',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const DashboardCards(
                        OverallPrivacyScore(),
                        'Application Data\nUsage',
                        AppRoutes.realTimeThreadDetectionScreen,
                      ),
                      SizedBox(width: scale.getScaledHeight(16)),
                      const DashboardCards(
                        LineGraph(),
                        'Data Usage Graph\n',
                        AppRoutes.realTimeThreadDetectionScreen,
                      ),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Threat History',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    RecentAlertList(),
                    'Recent Alerts List',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Data Sharing Practices',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    SecurityTips(),
                    'Security Tips',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'User Education',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    EducationalResources(),
                    'Educational Resources',
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

  Widget _overlayText(String name, String date) {
    return overlayText(name, date);
  }
}
