import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_routes.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/constants/scaling_utility.dart';
import 'package:xorbx/presentation/sign_in_screen/controller/sign_in_controller.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/custom_text_field.dart';
import 'package:xorbx/widgets/divider_with_text.dart';
import 'package:xorbx/widgets/social_button.dart';

class SignInScreen extends StatelessWidget {
  final SignInController controller = Get.find();

  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
        backgroundColor: ColorConstant.color1,
        body: BackgroundEffect(dynamicChildren: [
          Center(
            child: Opacity(
              opacity: 0.8,
              child: CommonNetworkImageView(
                url: ImageConstants.bgImage,
                height: scale.fh * 0.96,
                width: scale.fw * 0.96,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: scale.getScaledHeight(30.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: scale.getScaledHeight(100)),
                  Image.asset(
                    ImageConstants.xorbx,
                    height: scale.getScaledHeight(40),
                    width: scale.getScaledHeight(82),
                  ),
                  SizedBox(height: scale.getScaledHeight(30)),
                  Text(
                    "Sign In",
                    style: AppStyle.style3.copyWith(
                      fontSize: scale.getScaledHeight(22),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(30)),
                  SocialButton(
                    image: Image.asset(ImageConstants.google),
                    text: 'Continue with Google',
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  SocialButton(
                    image: Image.asset(ImageConstants.apple),
                    text: 'Continue with Apple',
                  ),
                  SizedBox(height: scale.getScaledHeight(20)),
                  const DividerWithText(text: 'OR'),
                  SizedBox(height: scale.getScaledHeight(20)),
                  CustomTextField(
                    hintText: 'Email',
                    onChanged: (value) => controller.email.value = value,
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  CustomTextField(
                    hintText: 'Password',
                    isPassword: true,
                    onChanged: (value) => controller.password.value = value,
                  ),
                  SizedBox(
                    width: scale.getScaledHeight(scale.fw),
                    height: scale.getScaledHeight(50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Obx(
                              () => Checkbox(
                                value: controller.rememberMe.value,
                                onChanged: (value) =>
                                    controller.toggleRememberMe(),
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                              ),
                            ),
                            Text(
                              "Remember me",
                              style: AppStyle.style2.copyWith(
                                fontSize: scale.getScaledHeight(12),
                                fontWeight: FontWeight.normal,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Forgot Password?",
                          style: AppStyle.style2.copyWith(
                            fontSize: scale.getScaledHeight(12),
                            fontWeight: FontWeight.normal,
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(20)),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(
                        AppRoutes.verificationScreen,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstant.color4,
                      fixedSize: Size(scale.fh - scale.getScaledHeight(100),
                          scale.getScaledHeight(60)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(scale.getScaledHeight(12)),
                        ),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: AppStyle.style3.copyWith(
                        fontSize: scale.getScaledHeight(20),
                        fontWeight: FontWeight.w700,
                        color: ColorConstant.color1,
                      ),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?  | ",
                        style: AppStyle.style2.copyWith(
                          fontSize: scale.getScaledHeight(12),
                          fontWeight: FontWeight.normal,
                          color: Colors.white54,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.signUpScreen,
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: AppStyle.style2.copyWith(
                            fontSize: scale.getScaledHeight(12),
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(100)),
                ],
              ),
            ),
          ),
        ]));
  }
}
