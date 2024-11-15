import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DashboardCards extends StatelessWidget {
  final Widget? content;
  final String title;
  final String route;
  final bool isButtonNeed;
  final String buttonTitle; // Moved to named parameter with default value

  const DashboardCards(
    this.content,
    this.title,
    this.route, {
    this.isButtonNeed = false,
    this.buttonTitle = "Button", // Default value set to "Button"
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return ShadowBorderCard(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyle.style2.copyWith(
              fontSize: scale.getScaledHeight(16),
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: scale.getScaledHeight(16)),
          Container(
            decoration: BoxDecoration(
              color: ColorConstant.cardColor,
              borderRadius: BorderRadius.circular(scale.getScaledHeight(8)),
            ),
            child: content,
          ),
          SizedBox(height: scale.getScaledHeight(16)),
          isButtonNeed ? _customButton(scale) : const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _customButton(ScalingUtility scale) {
    return Center(
      child: SizedBox(
        width: scale.getScaledHeight(240),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstant.color4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(scale.getScaledHeight(6)),
              ),
            ),
          ),
          onPressed: () {
            // Navigate to the route specified in the constructor
            Get.toNamed(route);
          },
          child: Text(
            buttonTitle, // No need for null check due to default value
            style: const TextStyle(
              color: ColorConstant.color1,
            ),
          ),
        ),
      ),
    );
  }
}
