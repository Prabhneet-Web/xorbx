import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/presentation/training/controller/training_controller.dart';
import 'package:xorbx/presentation/training/widgets/downloadable_materials.dart';
import 'package:xorbx/presentation/training/widgets/featured_training_modules.dart';
import 'package:xorbx/presentation/training/widgets/recommended_articles.dart';
import 'package:xorbx/presentation/training/widgets/recommended_videos.dart';
import 'package:xorbx/presentation/training/widgets/security_alerts.dart';
import 'package:xorbx/presentation/training/widgets/training_progress.dart';
import 'package:xorbx/presentation/training/widgets/welcome_back.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class TrainingScreen extends GetWidget<TrainingController> {
  const TrainingScreen({super.key});

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
                    onPressed: () {
                      Get.toNamed(AppRoutes.trainingSidebarScreen);
                    },
                    icon: const Icon(
                      Icons.menu_outlined,
                      color: ColorConstant.color4,
                    ),
                  ),
                  SizedBox(width: scale.getScaledHeight(5)),
                  Text(
                    'Cybersecurity Awareness\nTraining Dashboard',
                    style: AppStyle.style2,
                  ),
                  const Spacer(flex: 1),
                  IconButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.customerFeedback);
                    },
                    icon: const Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  SizedBox(width: scale.getScaledHeight(10)),
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
                        vertical: scale.getScaledHeight(5),
                        horizontal: scale.getScaledHeight(16),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              const ShadowBorderCard(
                                content: WelcomeBack(),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: CommonNetworkImageView(
                                  url: ImageConstants.blueOverlay,
                                  fit: BoxFit.cover,
                                  height: 80,
                                  width: scale.fw,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: scale.getScaledHeight(16)),
                          const ShadowBorderCard(
                            content: TrainingProgress(),
                          ),
                          SizedBox(height: scale.getScaledHeight(16)),
                          Text(
                            "Featured Training Modules",
                            style: AppStyle.style2.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: scale.getScaledHeight(10)),
                          const FeaturedTrainingModules(),
                          SizedBox(height: scale.getScaledHeight(16)),
                          Text(
                            "Recommended Articles/Videos",
                            style: AppStyle.style2.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: scale.getScaledHeight(10)),
                          const ShadowBorderCard(
                            content: RecommendedArticles(),
                          ),
                          SizedBox(height: scale.getScaledHeight(16)),
                          const ShadowBorderCard(
                            content: RecommendedVideos(),
                          ),
                          SizedBox(height: scale.getScaledHeight(16)),
                          const ShadowBorderCard(
                            content: DownloadableMaterials(),
                          ),
                          SizedBox(height: scale.getScaledHeight(16)),
                          Text(
                            "Alerts and Notifications",
                            style: AppStyle.style2.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: scale.getScaledHeight(10)),
                          const DashboardCards(
                            SecurityAlerts(),
                            'Security Aerts',
                            AppRoutes.realTimeThreadDetectionScreen,
                          ),
                          SizedBox(height: scale.getScaledHeight(100)),
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
