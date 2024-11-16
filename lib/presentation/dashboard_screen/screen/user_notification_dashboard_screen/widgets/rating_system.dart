import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/user_notification_dashboard_screen/controller/user_notification_dashboard_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/common_network_image.dart';

class RatingSystem extends GetWidget<UserNotificationDashboardController> {
  const RatingSystem({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Container(
      color: ColorConstant.color1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          5,
          (index) {
            return IconButton(
              onPressed: () {
                controller.updateRating(index + 1);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      backgroundColor: ColorConstant.color1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          scale.getScaledHeight(20),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                          scale.getScaledHeight(26),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: scale.getScaledHeight(20)),
                            CommonNetworkImageView(
                              url: ImageConstants.thankYouPerson,
                              height: scale.getScaledHeight(98),
                              width: scale.getScaledHeight(98),
                            ),
                            SizedBox(height: scale.getScaledHeight(30)),
                            Text(
                              'Thank you for your feedback!\nWe appreciate\nyour input and will respond\nshortly.',
                              style: AppStyle.style2,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: scale.getScaledHeight(20)),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              icon: Obx(
                () => Icon(
                  index < controller.selectedRating.value
                      ? Icons.star
                      : Icons.star_outline,
                  color: Colors.orange,
                  size: scale.getScaledHeight(30),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
