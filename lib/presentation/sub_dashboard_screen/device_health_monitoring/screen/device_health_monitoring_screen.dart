import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/controller/device_health_monitoring_controller.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/alert_badges.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/battery_health_status.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/battery_percentage.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/battery_usage_pattern.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/cached_files.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/cpu_usage.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/current_device_temperature.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/donut_chart.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/historical_performance_data.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/list_of_applications.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/notification_popups.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/ram_usage.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/storage_usage_over_time.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/temperature_trends.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/widgets/total_storage_capacity.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/widgets/background_effect.dart';

class DeviceHealthMonitoringScreen
    extends GetWidget<DeviceHealthMonitoringController> {
  const DeviceHealthMonitoringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: scale.getScaledHeight(35),
                  left: scale.getScaledHeight(5),
                  right: scale.getScaledHeight(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.userNotificationSidebarScreen);
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
                padding: EdgeInsets.only(
                  bottom: scale.getScaledHeight(15),
                  left: scale.getScaledHeight(5),
                  right: scale.getScaledHeight(16),
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
                      'Device Health Monitoing',
                      style: AppStyle.style2,
                    ),
                    const Spacer(),
                    _overlayText("Last Synced:", "September 01, 2024"),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: scale.getScaledHeight(5),
                      horizontal: scale.getScaledHeight(16),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: scale.getScaledHeight(5)),
                        Text(
                          "Battery Health Monitoring",
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const DashboardCards(
                              BatteryPercentage(
                                percentage: 42,
                                radius: 12,
                              ),
                              'Battery\nPercentage',
                              AppRoutes.realTimeThreadDetectionScreen,
                            ),
                            SizedBox(width: scale.getScaledHeight(16)),
                            const DashboardCards(
                              BatteryHealthStatus(),
                              'Battery Health\nStatus',
                              AppRoutes.realTimeThreadDetectionScreen,
                            ),
                          ],
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        const DashboardCards(
                          BatteryUsagePattern(),
                          'Battery Usage Patterns',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        Text(
                          "Notification for Issues",
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        const DashboardCards(
                          AlertBadges(),
                          'Alert Badges',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        Text(
                          "Storage Management",
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        const DashboardCards(
                          TotalStorageCapacity(),
                          'Total Storage Capacity',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        Text(
                          "Storage Breakdown",
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        const DashboardCards(
                          DonutChart(),
                          'Donut Chart',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        Text(
                          "Cleanup Recommendations",
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        const DashboardCards(
                          CachedFiles(),
                          'Cached Files',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        const DashboardCards(
                          StorageUsageOverTime(),
                          'Storage Usage Over Time',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        Text(
                          "Performance Metrics",
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        const DashboardCards(
                          CpuUsage(),
                          'CPU Usage',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        const DashboardCards(
                          RamUsage(),
                          'RAM Usage',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        Text(
                          'Performance Bottlenecks',
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        const DashboardCards(
                          ListOfApplications(),
                          'List of Applications',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        const DashboardCards(
                          HistoricalPerformanceData(),
                          'Historical Performance Data',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        Text(
                          ' Temperature Monitoring',
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        const DashboardCards(
                          CurrentDeviceTemperature(),
                          'Current Device Temperature',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        const DashboardCards(
                          TemperatureTrends(),
                          'Temperature Trends',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        Text(
                          "Alerts for Overheating",
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        const DashboardCards(
                          NotificationPopups(),
                          'Notification Pop-Ups',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(50)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
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
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            fixedSize: Size((scale.fw - 150) / 3, scale.getScaledHeight(0)),
            backgroundColor: Colors.orange,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          child: Text(
            'Refresh',
            style: AppStyle.style3.copyWith(
              fontSize: 9,
            ),
          ),
        ),
      ],
    );
  }
}
