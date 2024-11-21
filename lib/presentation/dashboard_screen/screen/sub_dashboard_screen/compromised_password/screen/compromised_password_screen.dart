import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/widgets/alerts_and_notifications.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/widgets/data_sharing_practices.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/widgets/line_graph.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/widgets/overall_privacy_score.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/controller/compromised_password_controller.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/widgets/compromised_accounts_by_category.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/widgets/compromised_accounts_list.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/widgets/key_metrics_section.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/widgets/recent_alerts_list.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/widgets/security_recommendations_section.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/widgets/timeline_of_compromise.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/widgets/top_affected_service.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/widgets/user_actions_and_interactivity.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';

class CompromisedPasswordScreen
    extends GetWidget<CompromisedPasswordController> {
  const CompromisedPasswordScreen({super.key});

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
                              'Compromised Password\nDashboard',
                              style: AppStyle.style2,
                            ),
                          ],
                        ),
                        const Spacer(),
                        _overlayText("Last Synced:", "September 01, 2024"),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(5)),
                  Text(
                    'Key Metrics Section',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const KeyMetricsSection(),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Visual Data Representation',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    CompromisedAccountsByCategory(),
                    'Compromised Accounts by Category',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    TimelineOfCompromise(),
                    'Timeline of Compromise',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    TopAffectedService(),
                    'Top Affected Services',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Alerts and Notifications',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    RecentAlertsList(),
                    'Recent Alerts List',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Compromised Accounts List',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const CompromisedAccountsList(),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'User Actions and Interactivity',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const UserActionsAndInteractivity(),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Security Recommendations Section',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    SecurityRecommendationsSection(),
                    'Best Practices',
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

  Widget _overlayText(String name, String date) {
    return Positioned(
      top: scale.getScaledHeight(10),
      right: scale.getScaledHeight(10),
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
