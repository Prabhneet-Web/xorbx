import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';

class VerificationController extends GetxController {
  // Observable variable for the text entered in the PinCodeTextField
  RxString textFieldText = ''.obs;

  // Method to handle verification logic
  void verify() {
    // Check if the entered code is the expected code (replace '12345' with actual logic)
    if (textFieldText.value == '1234') {
      Get.snackbar(
        'Success',
        'Verification successful!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      // Navigate to the next screen, e.g., a home screen or dashboard
      Get.toNamed('/home');
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

  // Optional: Function to handle re-sending the verification code
  void resendCode() {
    // Logic to resend the verification code
    Get.snackbar(
      'Verification Code Sent',
      'A new verification code has been sent to your email.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: ColorConstant.color1,
      colorText: Colors.white,
    );
  }
}
