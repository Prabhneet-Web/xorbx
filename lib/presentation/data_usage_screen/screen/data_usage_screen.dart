import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/data_usage_screen/controller/data_usage_controller.dart';
import 'package:xorbx/presentation/data_usage_screen/widgets/buttons_and_actions.dart';
import 'package:xorbx/presentation/data_usage_screen/widgets/data_saving_tips.dart';
import 'package:xorbx/presentation/data_usage_screen/widgets/detailed_usage_breakdown.dart';
import 'package:xorbx/presentation/data_usage_screen/widgets/graphical_representation.dart';
import 'package:xorbx/presentation/data_usage_screen/widgets/notification_alerts.dart';
import 'package:xorbx/presentation/data_usage_screen/widgets/summary_section.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/user_notification/widgets/total_security_alerts_count.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';

class DataUsageScreen extends GetWidget<DataUsageController> {
  const DataUsageScreen({super.key});

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
                      top: scale.getScaledHeight(25),
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
                        Text(
                          'Data Usage',
                          style: AppStyle.style2,
                        ),
                        const Spacer(),
                        _overlayText("Last Synced:", "September 01, 2024"),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(5)),
                  const DashboardCards(
                    SummarySection(),
                    'Summary Section',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    GraphicalRepresentation(),
                    'Graphical Representation',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    DetailedUsageBreakdown(),
                    'Detailed Usage Breakdown',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    NotificationAlerts(),
                    'Notification Alerts',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    ButtonsAndActions(),
                    'Buttons and Actions',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    DataSavingTips(),
                    'Data-Saving Tips Or Settings',
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

  Widget _totalSecurityAlertCount() {
    return Stack(
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
    );
  }

  Widget _overlayText(String name, String date) {
    return Column(
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
    );
  }
}
