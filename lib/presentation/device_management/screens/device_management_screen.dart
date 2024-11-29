import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/presentation/device_management/controllers/device_management_controller.dart';
import 'package:xorbx/presentation/device_management/widgets/device_details.dart';
import 'package:xorbx/presentation/device_management/widgets/device_list.dart';
import 'package:xorbx/presentation/wallet_with_cashback/widgets/detailed_transaction_history.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DeviceManagementScreen extends GetWidget<DeviceManagementController> {
  const DeviceManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(dynamicChildren: [
        SingleChildScrollView(
          child: Column(
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
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.chevron_left_outlined,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: scale.getScaledHeight(5)),
                    Text(
                      'Data Usage',
                      style: AppStyle.style2,
                    ),
                    const Spacer(flex: 1),
                    CustomPaint(
                      painter: InnerShadowPainter(),
                      child: Container(
                        height: scale.getScaledHeight(30),
                        width: scale.getScaledHeight(30),
                        decoration: BoxDecoration(
                          color: ColorConstant.color1,
                          borderRadius:
                              BorderRadius.circular(scale.getScaledHeight(10)),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: scale.getScaledHeight(10)),
                    CustomPaint(
                      painter: InnerShadowPainter(),
                      child: Container(
                        height: scale.getScaledHeight(30),
                        width: scale.getScaledHeight(30),
                        decoration: BoxDecoration(
                          color: ColorConstant.color1,
                          borderRadius:
                              BorderRadius.circular(scale.getScaledHeight(10)),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.settings_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: scale.getScaledHeight(10)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const DashboardCards(
                      DeviceList(),
                      'Device List',
                      AppRoutes.realTimeThreadDetectionScreen,
                    ),
                    SizedBox(height: scale.getScaledHeight(16)),
                    const DashboardCards(
                      DeviceDetails(),
                      'Device Details',
                      AppRoutes.realTimeThreadDetectionScreen,
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                  ],
                ),
              ),
            ],
          ),
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
