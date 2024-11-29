import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/biometric_management/controllers/biometric_management_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/custom_text_field.dart';

class AddUser extends GetWidget<BiometricManagementController> {
  const AddUser({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CustomTextField(
              hintText: 'Name',
              onChanged: (value) => controller.name.value = value,
            ),
            SizedBox(height: scale.getScaledHeight(20)),
            CustomTextField(
              hintText: 'User ID',
              onChanged: (value) => controller.userId.value = value,
            ),
            SizedBox(height: scale.getScaledHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: ColorConstant.color3,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Add User',
                      style: AppStyle.style3.copyWith(
                        fontSize: scale.getScaledHeight(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
