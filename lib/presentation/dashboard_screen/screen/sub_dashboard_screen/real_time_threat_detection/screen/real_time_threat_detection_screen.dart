import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/compliance_overview.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/device_status_overview.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/network_traffic_analysis.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/pie_charts.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/recent_incidents_table.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/summary_cards.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/threat_trend_graph.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/threats_alert.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/update_status.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/user_activity_monitoring.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/widgets/vulnerability_heat_map.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/overlay_text.dart';

class RealTimeThreatDetectionScreen
    extends GetWidget<RealTimeThreadDetectionController> {
  const RealTimeThreatDetectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                              'Real Time Threat\nDetection Dashboard',
                              style: AppStyle.style2,
                            ),
                          ],
                        ),
                        const Spacer(),
                        overlayText("Last Synced:", "September 01, 2024"),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  Text(
                    'Summary Cards',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SummaryCards(),
                  const SizedBox(height: 16),
                  Text(
                    "Real Time Threat Alerts",
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const DashboardCards(
                    ThreatsAlert(),
                    'Threats Alert',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    ThreatTrendGraph(),
                    'Threat Trend Graph',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    PieCharts(),
                    'Pie Charts',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    DeviceStatusOverview(),
                    'Device Status Overview',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Incident Log',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const DashboardCards(
                    RecentIncidentsTable(),
                    'Recent Incidents Table',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    VulnerabilityHeatMap(),
                    'Vulnerability Heat Map',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  const SizedBox(height: 16),
                  Stack(
                    children: [
                      const DashboardCards(
                        UserActivityMonitoring(),
                        'User Activity Monitoring',
                        AppRoutes.realTimeThreadDetectionScreen,
                      ),
                      Positioned(
                        top: scale.getScaledHeight(15),
                        right: scale.getScaledHeight(30),
                        child: Icon(
                          Icons.format_align_center_outlined,
                          color: Colors.white,
                          size: scale.getScaledHeight(20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Network Traffic Analysis',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    NetworkTrafficAnalysis(),
                    'Network Traffic Overview Panel',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Update Status',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    UpdateStatus(),
                    'Device Status Overview',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Compliance Status',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    ComplianceOverview(),
                    'Compliance Overview',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  const SizedBox(height: 36),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
