import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:xorbx/constants/app_routes.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/verification_screen/controller/verification_controller.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';

class VerificationScreen extends StatelessWidget {
  final VerificationController controller = Get.find();

  VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: Stack(
        children: [
          const BackgroundEffect(),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: scale.getScaledHeight(30)),
                child: Column(
                  children: [
                    SizedBox(height: scale.getScaledHeight(100)),
                    CommonNetworkImageView(
                      url: ImageConstants.xorbx,
                      height: scale.getScaledHeight(40),
                      width: scale.getScaledHeight(82),
                    ),
                    SizedBox(height: scale.getScaledHeight(30)),
                    Text(
                      "Verification",
                      style: AppStyle.style2.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: scale.getScaledHeight(50)),
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      textStyle: AppStyle.style1,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12),
                        fieldHeight: scale.getScaledHeight(58),
                        fieldWidth: scale.getScaledWidth(56),
                        activeFillColor: Colors.transparent,
                        selectedFillColor: Colors.transparent,
                        inactiveFillColor: Colors.transparent,
                        selectedColor: Colors.white60,
                        activeColor: Colors.white60,
                        inactiveColor: Colors.white60,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        controller.textFieldText.value = value;
                      },
                    ),
                    SizedBox(height: scale.getScaledHeight(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't receive code?  ",
                          style: AppStyle.style2.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.white54,
                          ),
                        ),
                        Text(
                          "Request Again",
                          style: AppStyle.style2.copyWith(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: scale.getScaledHeight(150)),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(
                          AppRoutes.dashboardScreen,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.color4,
                        fixedSize:
                            Size(scale.fh - 100, scale.getScaledHeight(60)),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(scale.getScaledHeight(12)),
                        ),
                      ),
                      child: Text(
                        'Verify',
                        style: AppStyle.style3.copyWith(
                          fontSize: 20,
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
                          "Create Account  |  ",
                          style: AppStyle.style2.copyWith(
                            fontSize: 12,
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
                              fontSize: 12,
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
    );
  }
}
