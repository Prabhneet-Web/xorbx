import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/notification/controller/notification_controller.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/user_notification/widgets/last_month_notifications.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/user_notification/widgets/last_week_notifications.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/user_notification/widgets/push_notifications.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({super.key});

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
                  bottom: scale.getScaledHeight(15),
                  top: scale.getScaledHeight(35),
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
                      'Notifications',
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
                          "Notifications",
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        const DashboardCards(
                          PushNotifications(),
                          'Push Notifications',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        Text(
                          "Past Notifications",
                          style: AppStyle.style2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        const DashboardCards(
                          LastWeekNotifications(),
                          'Last Week Notifications',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        const DashboardCards(
                          LastMonthNotifications(),
                          'Last Month Notifications',
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

  Widget _overlayTextDashboardCards(Widget content, String name, String date) {
    return Stack(
      children: [
        content,
        _overlayText(name, date),
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
