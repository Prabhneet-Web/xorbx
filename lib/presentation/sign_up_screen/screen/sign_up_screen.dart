import 'dart:io';

import 'package:country_code_picker_plus/country_code_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/presentation/sign_up_screen/controller/sign_up_controller.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/custom_text_field.dart';
import 'package:xorbx/widgets/divider_with_text.dart';
import 'package:xorbx/widgets/social_button.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({super.key});

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
          Column(
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
              SizedBox(height: scale.getScaledHeight(20)),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: scale.getPadding(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: scale.getScaledHeight(10)),
                        GestureDetector(
                          onTap: () {
                            controller.signInWithGoogle();
                          },
                          child: SocialButton(
                            image: Image.asset(ImageConstants.google),
                            text: 'Continue with Google',
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        Platform.isAndroid
                            ? const SizedBox.shrink()
                            : GestureDetector(
                                onTap: () {
                                  controller.signInWithApple();
                                },
                                child: SocialButton(
                                  image: Image.asset(ImageConstants.apple),
                                  text: 'Continue with Apple',
                                ),
                              ),
                        SizedBox(height: scale.getScaledHeight(20)),
                        const DividerWithText(text: 'OR'),
                        SizedBox(height: scale.getScaledHeight(20)),
                        CustomTextField(
                          hintText: 'UserName / ID',
                          onChanged: (value) =>
                              controller.username.value = value,
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
                              child: const CustomTextField(
                                hintText: "Code",
                                content: CountryCodePicker(
                                  closeIcon: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                  showCountryOnly: true,
                                  textStyle: TextStyle(color: Colors.white),
                                  dialogBackgroundColor: ColorConstant.color1,
                                  dialogTextStyle:
                                      TextStyle(color: Colors.white),
                                  searchStyle: TextStyle(color: Colors.white),
                                  searchDecoration: InputDecoration(
                                    suffixIconColor: Colors.white,
                                    iconColor: Colors.white,
                                    hintText: "Search",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: scale.getScaledWidth(10)),
                            Flexible(
                              child: CustomTextField(
                                hintText: 'Phone',
                                onChanged: (value) =>
                                    controller.phoneNumber.value = value,
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
                          onChanged: (value) =>
                              controller.password.value = value,
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        CustomTextField(
                          hintText: 'Confirm Password',
                          isPassword: true,
                          onChanged: (value) =>
                              controller.confirmPassword.value = value,
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
                                  onChanged: (value) =>
                                      controller.toggleRememberMe(),
                                  activeColor: Colors.white,
                                  checkColor: Colors.black,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "By continuing you, agree to our ",
                                  style: AppStyle.style2.copyWith(
                                    color: Colors.white38,
                                    fontSize: 10,
                                    letterSpacing: 0.5,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Terms",
                                      style: AppStyle.style3.copyWith(
                                        color: Colors.red,
                                        fontSize: 10,
                                        decoration: TextDecoration.underline,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " and ",
                                      style: AppStyle.style2.copyWith(
                                        color: Colors.white38,
                                        fontSize: 10,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Privacy Policy",
                                      style: AppStyle.style3.copyWith(
                                        color: Colors.red,
                                        fontSize: 10,
                                        decoration: TextDecoration.underline,
                                        letterSpacing: 0.5,
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
                            controller.signUp();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.color4,
                            fixedSize: Size(
                                scale.fh - scale.getScaledHeight(100),
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
              ),
            ],
          ),
        ]));
  }
}
