import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/widgets/app_permission_overview.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/widgets/data_sensitivity.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/widgets/usage_frequency.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/widgets/user_control.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';

class AppPermissionCheckerScreen extends GetWidget {
  const AppPermissionCheckerScreen({super.key});

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
                              'App Permission Checker\nDashboard',
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
                  Stack(
                    children: [
                      const DashboardCards(
                        AppPermissionOverview(),
                        'App Permission Overview',
                        AppRoutes.realTimeThreadDetectionScreen,
                      ),
                      Positioned(
                        top: scale.getScaledHeight(20),
                        right: scale.getScaledHeight(20),
                        child: Icon(
                          Icons.format_align_center_outlined,
                          color: Colors.white,
                          size: scale.getScaledHeight(20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    UsageFrequency(),
                    'Usage Frequency',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    DataSensitivity(),
                    'Data Sensitivity',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    UserControl(),
                    'User Control',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    'Privacy Score',
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
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
