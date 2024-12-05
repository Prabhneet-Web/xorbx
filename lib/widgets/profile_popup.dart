import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

void showPopup(BuildContext context) {
  OverlayEntry? overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) {
      return GestureDetector(
        onTap: () {
          overlayEntry?.remove();
        },
        child: Stack(
          children: [
            Container(
              color: Colors.transparent,
            ),
            Positioned(
              top: scale.getScaledHeight(90),
              right: scale.getScaledHeight(30),
              child: GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: scale.getScaledHeight(110),
                  child: ShadowBorderCard(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () {
                            overlayEntry?.remove();
                            FirebaseAuth.instance.signOut();
                            Get.toNamed(
                              AppRoutes.signInScreen,
                            );
                            Get.snackbar(
                              "Logout",
                              "Logout Succesful",
                              colorText: Colors.white,
                            );
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.logout_outlined,
                                color: ColorConstant.color4,
                                size: 19,
                              ),
                              SizedBox(width: scale.getScaledHeight(10)),
                              Text(
                                "LogOut",
                                style: AppStyle.style3.copyWith(
                                  fontSize: 12,
                                  color: Colors.white70,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(10)),
                        Row(
                          children: [
                            const Icon(
                              Icons.settings,
                              color: ColorConstant.color4,
                              size: 18,
                            ),
                            SizedBox(width: scale.getScaledHeight(10)),
                            Text(
                              "Settings",
                              style: AppStyle.style3.copyWith(
                                fontSize: 12,
                                color: Colors.white70,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );

  Navigator.of(context).overlay!.insert(overlayEntry);
}
