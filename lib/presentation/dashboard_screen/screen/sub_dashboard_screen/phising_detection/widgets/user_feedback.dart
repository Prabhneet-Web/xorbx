import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/phising_detection/controller/phishing_detection_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class UserFeedback extends GetWidget<PhishingDetectionController> {
  const UserFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return ShadowBorderCard(
      content: Container(
        color: ColorConstant.color1,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: scale.getScaledHeight(10),
            vertical: scale.getScaledHeight(5),
          ),
          child: Row(
            children: [
              Text(
                "Ratings:",
                style: AppStyle.style3.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: scale.getScaledHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  5,
                  (index) {
                    return GestureDetector(
                      onTap: () {
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
                      child: Obx(
                        () => Icon(
                          index < controller.selectedRating.value
                              ? Icons.star_rate_rounded
                              : Icons.star_border_rounded,
                          color: Colors.orange,
                          size: scale.getScaledHeight(30),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
