import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/verification_screen/controller/verification_controller.dart';
import 'package:xorbx/widgets/common_network_image.dart';

class VerificationScreen extends StatelessWidget {
  final VerificationController controller = Get.find();

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
              width: 230, // Width for the ellipse
              height: 230, // Height for the ellipse
              decoration: BoxDecoration(
                color: const Color.fromRGBO(150, 187, 210, 1)
                    .withOpacity(0.3), // Color of the ellipse
                borderRadius: BorderRadius.circular(50), // Ellipse shape
              ),
              child: Stack(
                children: [
                  // Apply blur effect
                  BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 25, sigmaY: 25), // Blur intensity
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors
                            .transparent, // Make sure the background is transparent
                        borderRadius: BorderRadius.circular(
                            50), // Match the ellipse shape
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
              width: 230, // Width for the ellipse
              height: 230, // Height for the ellipse
              decoration: BoxDecoration(
                color: const Color.fromRGBO(150, 187, 210, 1)
                    .withOpacity(0.3), // Color of the ellipse
                borderRadius: BorderRadius.circular(50), // Ellipse shape
              ),
              child: Stack(
                children: [
                  // Apply blur effect
                  BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 50, sigmaY: 50), // Blur intensity
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors
                            .transparent, // Make sure the background is transparent
                        borderRadius: BorderRadius.circular(
                            50), // Match the ellipse shape
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Image.asset(
                      "assets/images/app.png",
                      height: scale.getScaledHeight(40),
                      width: scale.getScaledHeight(
                        82,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Verification",
                      style: AppStyle.style2.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    const SizedBox(height: 50),
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
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 150),
                    ElevatedButton(
                      onPressed: () => controller.verify(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.color4,
                        fixedSize: Size(scale.fh - 100, 60),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(12)), // Corrected shape
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
                    const SizedBox(height: 20),
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
          ),
        ],
      ),
    );
  }
}
