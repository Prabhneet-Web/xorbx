import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/notification/controller/notification_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';
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
                  top: scale.getScaledHeight(40),
                  left: scale.getScaledHeight(5),
                  right: scale.getScaledHeight(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
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
                    Obx(() => _overlayText("Last Synced:",
                        controller.lastSynced.value, controller)),
                  ],
                ),
              ),
              // Notifications List
              Expanded(
                child: Obx(() {
                  return SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: scale.getScaledHeight(16),
                      ),
                      child: Column(
                        children: [
                          controller.notifications.isEmpty
                              ? Text(
                                  "No notifications available",
                                  style: AppStyle.style1
                                      .copyWith(color: Colors.white),
                                )
                              : ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: controller.notifications.length,
                                  itemBuilder: (context, index) {
                                    var notification =
                                        controller.notifications[index];
                                    return Column(
                                      children: [
                                        _itemsSection(
                                          notification['title'] ?? '',
                                          notification['timestamp'] ?? '',
                                        ),
                                        SizedBox(
                                            height: scale.getScaledHeight(16)),
                                      ],
                                    );
                                  },
                                ),
                          SizedBox(height: scale.getScaledHeight(50)),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemsSection(String title, String timestamp) {
    var scale = Get.find<ScalingUtility>();
    return ShadowBorderCard(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: scale.getScaledHeight(3),
                ),
                child: CircleAvatar(
                  radius: scale.getScaledHeight(5.5),
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            width: scale.getScaledHeight(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(12),
                ),
              ),
              SizedBox(height: scale.getScaledHeight(6)),
              Row(
                children: [
                  Text(
                    "Last timestamp:",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                    ),
                  ),
                  SizedBox(width: scale.getScaledHeight(6)),
                  Text(
                    timestamp,
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _overlayText(String name, String date, controller) {
    var scale = Get.find<ScalingUtility>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: controller.refreshNotifications,
              child: const Icon(
                Icons.refresh,
                size: 13,
                color: Colors.white60,
              ),
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
