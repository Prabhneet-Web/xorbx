import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/referral_screen/controller/referral_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/custom_text_field.dart';

class ReferralForm extends GetWidget<ReferralController> {
  const ReferralForm({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CustomTextField(
              hintText: 'Friend\'s Name',
              onChanged: (value) => controller.name.value = value,
            ),
            SizedBox(height: scale.getScaledHeight(20)),
            CustomTextField(
              hintText: 'Friend\'s Email',
              onChanged: (value) => controller.email.value = value,
            ),
            SizedBox(height: scale.getScaledHeight(20)),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstant.color4,
                fixedSize: Size(scale.fh - scale.getScaledHeight(100),
                    scale.getScaledHeight(50)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(scale.getScaledHeight(12)),
                  ),
                ),
              ),
              child: Text(
                'Submit',
                style: AppStyle.style3.copyWith(
                  fontSize: scale.getScaledHeight(20),
                  fontWeight: FontWeight.w700,
                  color: ColorConstant.color1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
