import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/sign_in_screen/controller/sign_in_controller.dart';
import 'package:xorbx/widgets/custom_text_field.dart';
import 'package:xorbx/widgets/divider_with_text.dart';
import 'package:xorbx/widgets/social_button.dart';

class SignInScreen extends StatelessWidget {
  final SignInController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 230,
              height: 230,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(150, 187, 210, 1).withOpacity(0.3),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: -150,
            child: Container(
              width: 230,
              height: 230,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(150, 187, 210, 1).withOpacity(0.3),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
                  Image.asset(
                    "assets/images/app.png",
                    height: scale.getScaledHeight(40),
                    width: scale.getScaledHeight(82),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Sign In",
                    style: AppStyle.style3.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SocialButton(
                    image: Image.asset(ImageConstants.google),
                    text: 'Continue with Google',
                  ),
                  const SizedBox(height: 10),
                  SocialButton(
                    image: Image.asset(ImageConstants.apple),
                    text: 'Continue with Apple',
                  ),
                  const SizedBox(height: 20),
                  const DividerWithText(text: 'OR'),
                  const SizedBox(height: 20),
                  CustomTextField(
                    hintText: 'Email',
                    onChanged: (value) => controller.email.value = value,
                  ),
                  CustomTextField(
                    hintText: 'Password',
                    isPassword: true,
                    onChanged: (value) => controller.password.value = value,
                  ),
                  Obx(() => CheckboxListTile(
                        title: const Text(
                          "Remember me",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.toggleRememberMe(),
                        activeColor: Colors.white,
                      )),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstant.color4,
                      fixedSize: Size(scale.fh - 100, 60),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(12)), // Corrected shape
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: AppStyle.style3.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorConstant.color1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?  ",
                        style: AppStyle.style2.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.white54,
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: AppStyle.style2.copyWith(
                          fontSize: 12,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
