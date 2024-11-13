import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/controller/dashboard_controller.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/real_time_threat_detection/screen/real_time_threat_detection_screen.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/heat_map.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DashboardScreen extends GetWidget<DashboardController> {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.color1,
        body: BackgroundEffect(dynamicChildren: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.toNamed(
                              AppRoutes.sidebarScreen,
                            );
                          },
                          icon: const Icon(
                            Icons.menu_outlined,
                            color: Color.fromRGBO(165, 212, 225, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Cyber Security Dashboard',
                          style: AppStyle.style2,
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(ImageConstants.person),
                          radius: 16, // optional: adjust the size as needed
                        ),
                      ],
                    ),
                  ),
                  _buildThreatDetectionCard(),
                  const SizedBox(height: 600),
                  // _buildAppPermissionCheckerCard(),
                  // const SizedBox(height: 16),
                  // _buildNetworkSecurityAlertsCard(),
                ],
              ),
            ),
          ),
        ]));
  }

  Widget _buildThreatDetectionCard() {
    return ShadowBorderCards(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Real-Time Threat Detection',
            style: AppStyle.style2.copyWith(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 130,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 8, 30, 41),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const HeatMap(),
          ),
          Center(
            child: SizedBox(
              width: 250, // Set the width of the button here
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(165, 212, 225, 1),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.to(() => RealTimeThreatDetectionScreen());
                },
                child: const Text(
                  'View Detailed Report',
                  style: TextStyle(color: Color.fromRGBO(13, 40, 62, 1)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppPermissionCheckerCard() {
    return Container(
      decoration: _cardDecoration(),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'App Permission Checker',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 10),
          Obx(() => Text(
                'Permission Score: ${controller.appPermissionScore}%',
                style: const TextStyle(color: Colors.white),
              )),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Review Permission'),
          ),
        ],
      ),
    );
  }

  Widget _buildNetworkSecurityAlertsCard() {
    return Container(
      decoration: _cardDecoration(),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Network Security Alerts',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 10),
          Obx(() => Text(
                'Alert Score: ${controller.networkAlertScore}%',
                style: const TextStyle(color: Colors.white),
              )),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('See All Alerts'),
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: const Color.fromRGBO(13, 40, 62, 1),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
