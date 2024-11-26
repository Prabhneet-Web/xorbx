import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/constants/color_constants.dart';

class CaptureEyeController extends GetxController {
  RxString textFieldText = ''.obs;

  void verify() {
    if (textFieldText.value == '1234') {
      // Get.snackbar(
      //   'Success',
      //   'Verification successful!',
      //   snackPosition: SnackPosition.BOTTOM,
      //   backgroundColor: Colors.green,
      //   colorText: Colors.white,
      // );
      Get.toNamed(
        AppRoutes.dashboardScreen,
      );
    } else {
      Get.snackbar(
        'Error',
        'Invalid verification code. Please try again.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void resendCode() {
    Get.snackbar(
      'Verification Code Sent',
      'A new verification code has been sent to your email.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: ColorConstant.color1,
      colorText: Colors.white,
    );
  }
}
