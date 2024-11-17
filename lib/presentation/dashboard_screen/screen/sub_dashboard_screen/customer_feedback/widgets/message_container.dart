import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/hint_text_widget.dart';

class MessageContainer extends StatelessWidget {
  final String hintText;
  final String content;

  const MessageContainer({
    super.key,
    required this.hintText,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Container(
      color: ColorConstant.color1,
      child: HintTextWidget(
        text: hintText,
        content: Padding(
          padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(6)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white70),
            ),
            child: Padding(
              padding: EdgeInsets.all(scale.getScaledHeight(16)),
              child: Stack(
                children: [
                  Text(
                    content,
                    style: AppStyle.style3.copyWith(
                      fontSize: scale.getScaledHeight(12),
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
