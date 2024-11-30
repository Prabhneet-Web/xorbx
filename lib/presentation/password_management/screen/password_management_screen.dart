import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/password_management/controller/password_management_controller.dart';
import 'package:xorbx/presentation/password_management/widgets/overview.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/presentation/password_management/widgets/password_list.dart';
import 'package:xorbx/presentation/password_management/widgets/settings.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';

class PasswordManagementScreen extends GetWidget<PasswordManagementController> {
  const PasswordManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: scale.getScaledHeight(15),
                  top: scale.getScaledHeight(35),
                  right: scale.getScaledHeight(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Password Management',
                      style: AppStyle.style2,
                    ),
                    const Spacer(),
                    _overlayText("Last Synced:", "September 01, 2024"),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(scale.getScaledHeight(16)),
                    child: Column(
                      children: [
                        SizedBox(height: scale.getScaledHeight(5)),
                        const DashboardCards(
                          Overview(),
                          'Overview',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        const DashboardCards(
                          PasswordList(),
                          'Password List',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        const DashboardCards(
                          Settings(),
                          'Settings',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(height: scale.getScaledHeight(50)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _overlayText(String name, String date) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            const Icon(
              Icons.refresh,
              size: 13,
              color: Colors.white60,
            ),
            SizedBox(width: scale.getScaledHeight(2)),
            Text(
              name,
              style: AppStyle.style2.copyWith(
                  color: Colors.white60,
                  fontWeight: FontWeight.normal,
                  fontSize: 13),
            ),
          ],
        ),
        Text(
          date,
          style: const TextStyle(
            color: Colors.white60,
            fontSize: 8,
          ),
        ),
      ],
    );
  }
}
