import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/biometric_management/controllers/biometric_management_controller.dart';
import 'package:xorbx/presentation/biometric_management/widgets/add_user.dart';
import 'package:xorbx/presentation/biometric_management/widgets/enrolled_user.dart';
import 'package:xorbx/presentation/biometric_management/widgets/notification_alerts_card.dart';
import 'package:xorbx/presentation/biometric_management/widgets/recent_logins.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class BiometricManagementScreen
    extends GetWidget<BiometricManagementController> {
  const BiometricManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(dynamicChildren: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: scale.getScaledHeight(45),
                bottom: scale.getScaledHeight(25),
                left: scale.getScaledHeight(5),
                right: scale.getScaledHeight(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu_outlined,
                      color: ColorConstant.color4,
                    ),
                  ),
                  SizedBox(width: scale.getScaledHeight(5)),
                  Text(
                    'Biometric',
                    style: AppStyle.style2,
                  ),
                  const Spacer(flex: 1),
                  GestureDetector(
                    onTap: () {
                      showPopup(context);
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage(ImageConstants.person),
                      radius: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(width: scale.getScaledHeight(10)),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: scale.getScaledHeight(16),
                        vertical: scale.getScaledHeight(5),
                      ),
                      child: Column(
                        children: [
                          const DashboardCards(
                            AddUser(),
                            'Add User',
                            AppRoutes.realTimeThreadDetectionScreen,
                          ),
                          SizedBox(height: scale.getScaledHeight(16)),
                          Row(
                            children: [
                              Text(
                                "User Activity Overview",
                                style: AppStyle.style2.copyWith(
                                  fontSize: scale.getScaledHeight(16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: scale.getScaledHeight(10)),
                          const DashboardCards(
                            RecentLogins(),
                            'Recent Logins',
                            AppRoutes.realTimeThreadDetectionScreen,
                          ),
                          SizedBox(height: scale.getScaledHeight(16)),
                          const DashboardCards(
                            NotificationAlertsCard(),
                            'Notification Alerts',
                            AppRoutes.realTimeThreadDetectionScreen,
                          ),
                          SizedBox(height: scale.getScaledHeight(16)),
                          const DashboardCards(
                            EnrolledUser(),
                            'Enrolled User',
                            AppRoutes.realTimeThreadDetectionScreen,
                          ),
                          SizedBox(height: scale.getScaledHeight(20)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }

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
                          Row(
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
}
