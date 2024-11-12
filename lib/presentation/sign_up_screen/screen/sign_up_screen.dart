import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_routes.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/constants/scaling_utility.dart';
import 'package:xorbx/presentation/sign_up_screen/controller/sign_up_controller.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/custom_text_field.dart';
import 'package:xorbx/widgets/divider_with_text.dart';
import 'package:xorbx/widgets/social_button.dart';

class SignUpScreen extends StatelessWidget {
  final SignUpController controller = Get.find();

  SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: Stack(
        children: [
          const BackgroundEffect(),
          CommonNetworkImageView(
            url: ImageConstants.bgImage,
          ),
          SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: scale.getScaledHeight(30.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: scale.getScaledHeight(100)),
                  CommonNetworkImageView(
                    url: ImageConstants.xorbx,
                    height: scale.getScaledHeight(40),
                    width: scale.getScaledHeight(82),
                  ),
                  SizedBox(height: scale.getScaledHeight(30)),
                  Text(
                    "Sign Up",
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
                    hintText: 'UserName / ID',
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  CustomTextField(
                    hintText: 'Email',
                    onChanged: (value) => controller.email.value = value,
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  Row(
                    children: [
                      SizedBox(
                        width: scale.getScaledWidth(110),
                        child: CustomTextField(
                          hintText: "Code",
                          content: DropdownButtonFormField<String>(
                            value: controller.selectedCountryCode.value,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            dropdownColor: const Color(0xFF1A3A5A),
                            style: const TextStyle(color: Colors.white),
                            items: [
                              '+1 (US)',
                              '+44 (UK)',
                              '+91 (IN)',
                              '+61 (AU)',
                              '+81 (JP)',
                            ].map((code) {
                              return DropdownMenuItem(
                                value: code,
                                child: Text(code),
                              );
                            }).toList(),
                            onChanged: (value) {
                              controller.selectedCountryCode.value = value!;
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: scale.getScaledWidth(10)),
                      const Flexible(
                        child: CustomTextField(
                          hintText: 'Phone',
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  CustomTextField(
                    hintText: 'Languages',
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: scale.getScaledWidth(20),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(100),
                          child: DropdownButtonFormField<String>(
                            value: controller.selectedLanguage.value,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            dropdownColor: ColorConstant.color1,
                            style: const TextStyle(color: Colors.white54),
                            items: [
                              'English',
                              'Spanish',
                              'French',
                              'German',
                              'Chinese'
                            ].map((language) {
                              return DropdownMenuItem(
                                value: language,
                                child: Text(language),
                              );
                            }).toList(),
                            onChanged: (value) {
                              controller.selectedLanguage.value = value!;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  CustomTextField(
                    hintText: 'Password',
                    isPassword: true,
                    onChanged: (value) => controller.password.value = value,
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const CustomTextField(
                    hintText: 'Confirm Password',
                    isPassword: true,
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  SizedBox(
                    width: scale.getScaledHeight(scale.fw),
                    height: scale.getScaledHeight(50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () => Checkbox(
                            value: controller.rememberMe.value,
                            onChanged: (value) => controller.toggleRememberMe(),
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "By continuing you, agree to our ",
                            style: AppStyle.style2.copyWith(
                              color: Colors.white38,
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                text: "Terms",
                                style: AppStyle.style3.copyWith(
                                  color: Colors.red,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: " and ",
                                style: AppStyle.style2.copyWith(
                                  color: Colors.white38,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: "Privacy Policy",
                                style: AppStyle.style3.copyWith(
                                  color: Colors.red,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
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
                      'Sign Up',
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
                        "Already have an account?  ",
                        style: AppStyle.style2.copyWith(
                          fontSize: scale.getScaledHeight(12),
                          fontWeight: FontWeight.normal,
                          color: Colors.white54,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.signInScreen,
                          );
                        },
                        child: Text(
                          "| Sign In",
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
        ],
      ),
    );
  }
}
