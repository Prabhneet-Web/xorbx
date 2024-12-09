import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/firebase_auth/firebase_auth_service.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/widgets/successful_scan.dart';
import 'package:xorbx/widgets/successful_sign_up.dart';

class SignUpController extends GetxController {
  var username = ''.obs;
  var email = ''.obs;
  var phoneNumber = ''.obs;
  var selectedCountryCode = '+1 (US)'.obs;
  var selectedLanguage = 'English'.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;
  var rememberMe = false.obs;

  final FirebaseAuthService _auth = FirebaseAuthService();

  void toggleRememberMe() {
    rememberMe.value = !rememberMe.value;
  }

  void signInWithGoogle() async {
    try {
      UserCredential? user = await _auth.loginWithGoogle();
      Get.toNamed(
        AppRoutes.multiFactorAuthenticationScreen,
      );
      if (user != null) {
        print("Logged in as ${user.user?.displayName}");
        Get.snackbar(
          "Success",
          "Logged in as ${user.user?.displayName}",
          colorText: Colors.white,
        );
      }
    } catch (e) {
      print("Error during sign-up: $e");
    }
  }

  void signInWithApple() async {
    try {
      UserCredential? user = await _auth.loginWithApple();
      Get.toNamed(
        AppRoutes.multiFactorAuthenticationScreen,
      );
      if (user != null) {
        print("Logged in as ${user.user?.displayName}");
        Get.snackbar(
          "Success",
          "Logged in as ${user.user?.displayName}",
          colorText: Colors.white,
        );
      }
    } catch (e) {
      print("Error during sign-up: $e");
    }
  }

  void signUp() async {
    if (_validateForm()) {
      try {
        User? user = await _auth.signUpWithEmailAndPassword(
          email.value.trim(),
          password.value.trim(),
          username.value.trim(),
          phoneNumber.value.trim(),
          selectedCountryCode.value.trim(),
          selectedLanguage.value.trim(),
          confirmPassword.value.trim(),
          rememberMe.value,
        );
        Get.dialog(successfulSignUp(title: "Registration was successful!"));
        // Get.toNamed(
        //   AppRoutes.signInScreen,
        // );
        if (user != null) {
          print("Sign-up successful: ${user.email}");
          Get.snackbar(
            "Success",
            "Sign-up successful: ${user.email}",
            colorText: Colors.white,
          );
        }
      } catch (e) {
        print("Error during sign-up: $e");
      }
    } else {
      print("Form is not valid");
    }
  }

  bool _validateForm() {
    if (username.value.trim().isEmpty) {
      print("Error: Username is required.");
      Get.snackbar(
        "Error",
        "Username is required.",
        colorText: Colors.white,
      );
      return false;
    }
    if (email.value.trim().isEmpty || !email.value.contains('@')) {
      print("Error: A valid email address is required.");
      Get.snackbar(
        "Error",
        "A valid email address is required.",
        colorText: Colors.white,
      );
      return false;
    }
    if (phoneNumber.value.trim().isEmpty || phoneNumber.value.length < 10) {
      print(
          "Error: Phone number must be at ${phoneNumber} least 10 digits long.");
      Get.snackbar(
        "Error",
        "Phone number must be at least 10 digits long.",
        colorText: Colors.white,
      );
      return false;
    }
    if (password.value.trim().isEmpty || password.value.length < 8) {
      print("Error: Password must be at least 8 characters long.");
      Get.snackbar(
        "Error",
        "Password must be at least 8 characters long.",
        colorText: Colors.white,
      );
      return false;
    }
    if (confirmPassword.value.trim() != password.value.trim()) {
      print("Error: Passwords do not match.");
      Get.snackbar(
        "Error",
        "Error: Passwords do not match.",
        colorText: Colors.white,
      );

      return false;
    }
    return true;
  }
}
