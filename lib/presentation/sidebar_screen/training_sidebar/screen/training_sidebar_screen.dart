import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/sidebar_screen/training_sidebar/controller/training_sidebar_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/drop_down_options.dart';

class TrainingSidebarScreen extends GetWidget<TrainingSidebarController> {
  const TrainingSidebarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          SafeArea(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: scale.getScaledHeight(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: scale.getScaledHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: scale.getScaledHeight(10)),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  CommonNetworkImageView(
                    url: ImageConstants.xorbx,
                    height: scale.getScaledHeight(40),
                    width: scale.getScaledHeight(82),
                  ),
                  SizedBox(height: scale.getScaledHeight(30)),
                  Expanded(
                    child: ListView(
                      children: [
                        DropDownOptions(
                          icon: Icons.home_outlined,
                          title: "Home",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.menu_book_outlined,
                          title: "Training Modules",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.battery_alert_sharp,
                          title: "Quizzes",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.list_alt_rounded,
                          title: "Resources",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.report_gmailerrorred_sharp,
                          title: "Reports",
                          items: const [],
                          scale: scale,
                        ),
                        DropDownOptions(
                          icon: Icons.settings,
                          title: "Settings",
                          items: const [],
                          scale: scale,
                        ),
                        SizedBox(height: scale.getScaledHeight(120)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
