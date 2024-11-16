import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/user_notification_dashboard_screen/controller/user_notification_dashboard_controller.dart';

class RatingSystem extends GetWidget<UserNotificationDashboardController> {
  const RatingSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.color1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          5,
          (index) {
            return IconButton(
              onPressed: () => controller.updateRating(index + 1),
              icon: Obx(
                () => Icon(
                  index < controller.selectedRating.value
                      ? Icons.star
                      : Icons.star_outline,
                  color: Colors.orange,
                  size: 30,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
