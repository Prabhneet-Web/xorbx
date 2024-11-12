import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';

class BackgroundEffect extends StatelessWidget {
  const BackgroundEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: -50,
          child: Container(
            width: scale.getScaledHeight(230),
            height: scale.getScaledHeight(230),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(150, 187, 210, 1).withOpacity(0.3),
              borderRadius: BorderRadius.circular(scale.getScaledHeight(50)),
            ),
            child: Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius:
                          BorderRadius.circular(scale.getScaledHeight(50)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: scale.getScaledHeight(500),
          left: scale.getScaledHeight(-200),
          child: Container(
            width: scale.getScaledHeight(230),
            height: scale.getScaledHeight(230),
            decoration: BoxDecoration(
              color: ColorConstant.color6.withOpacity(0.3),
              borderRadius: BorderRadius.circular(scale.getScaledHeight(50)),
            ),
            child: Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius:
                          BorderRadius.circular(scale.getScaledHeight(50)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
