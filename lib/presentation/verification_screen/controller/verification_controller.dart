import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/routes/app_routes.dart';

class VerificationController extends GetxController {
  var otp = ''.obs;
  var email = ''.obs;
  EmailAuth emailAuth = EmailAuth(sessionName: "Sample session");

  void verifyOTP() async {
    var res =
        emailAuth.validateOtp(recipientMail: email.value, userOtp: otp.value);

    if (res) {
      Get.snackbar(
        'Success',
        'Verification successful!',
        colorText: Colors.white,
      );
      Get.toNamed(
        AppRoutes.multiFactorAuthenticationScreen,
      );
    } else {
      Get.snackbar(
        'Error',
        'Invalid verification code. Please try again.',
        colorText: Colors.white,
      );
    }
  }

  void resendCode() async {
    var res = await emailAuth.sendOtp(recipientMail: email.value, otpLength: 4);
    if (res) {
      Get.snackbar(
        "Success",
        "OTP sent",
        colorText: Colors.white,
      );
    }
  }
}
