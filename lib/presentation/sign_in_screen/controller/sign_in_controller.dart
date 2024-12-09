import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/firebase_auth/firebase_auth_service.dart';
import 'package:xorbx/routes/app_routes.dart';

class SignInController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var rememberMe = false.obs;

  void toggleRememberMe() {
    rememberMe.value = !rememberMe.value;
  }

  final FirebaseAuthService _auth = FirebaseAuthService();

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

  void signIn() async {
    if (_validateForm()) {
      try {
        User? user = await _auth.signInWithEmailAndPassword(
          email.value.trim(),
          password.value,
          rememberMe.value,
        );
        Get.toNamed(
          AppRoutes.multiFactorAuthenticationScreen,
        );
        if (user != null) {
          print("Sign-in successful: ${user.email}");
          Get.snackbar(
            "Success",
            "Sign-in successful: ${user.email}",
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
    // if (username.value.trim().isEmpty) {
    //   print("Error: Username is required.");
    //   Get.snackbar(
    //     "Error",
    //     "Username is required.",
    //     colorText: Colors.white,
    //   );
    //   return false;
    // }
    if (email.value.trim().isEmpty || !email.value.contains('@')) {
      print("Error: A valid email address is required.");
      Get.snackbar(
        "Error",
        "A valid email address is required.",
        colorText: Colors.white,
      );
      return false;
    }
    // if (phoneNumber.value.trim().isEmpty ||
    //     phoneNumber.value.trim().length < 10) {
    //   print("Error: Phone number must be at least 10 digits long.");
    //   Get.snackbar(
    //     "Error",
    //     "Phone number must be at least 10 digits long.",
    //     colorText: Colors.white,
    //   );
    //   return false;
    // }
    if (password.value.trim().isEmpty || password.value.length < 8) {
      print("Error: Password must be at least 6 characters long.");
      Get.snackbar(
        "Error",
        "Password must be at least 8 characters long.",
        colorText: Colors.white,
      );
      return false;
    }
    // if (confirmPassword.value.trim() != password.value.trim()) {
    //   print("Error: Passwords do not match.");
    //   Get.snackbar(
    //     "Error",
    //     "Error: Passwords do not match.",
    //   );

    //   return false;
    // }
    return true;
  }
}
