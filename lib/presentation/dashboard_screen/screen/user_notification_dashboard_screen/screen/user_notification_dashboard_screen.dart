import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/user_notification_dashboard_screen/controller/user_notification_dashboard_controller.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/user_notification_dashboard_screen/widgets/message_card.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/user_notification_dashboard_screen/widgets/message_container.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/user_notification_dashboard_screen/widgets/rating_system.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/user_notification_dashboard_screen/widgets/specific_issues.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';

class UserNotificationDashboardScreen
    extends GetWidget<UserNotificationDashboardController> {
  const UserNotificationDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(scale.getScaledHeight(16)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: scale.getScaledHeight(15),
                      top: scale.getScaledHeight(30),
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
                          'User Notifications\nDashboard',
                          style: AppStyle.style2,
                        ),
                        const Spacer(),
                        _overlayText("Last Synced:", "September 01, 2024"),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  Text(
                    "Feedback Form",
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  const DashboardCards(
                    RatingSystem(),
                    'Rating System',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const MessageCard(
                    hintText: 'Feedback',
                    content:
                        "It is informative and easy to navigate, with clear visuals and color-coded alerts that help prioritize threats. Having high-severity alerts more prominently displayed would improve response times. Customization options for filtering or sorting by severity and recency would also enhance usability, making it quicker to access critical information.",
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const MessageCard(
                    hintText: 'Suggestion',
                    content:
                        "Consider adding more prominent alerts for high-severity threats to improve response times, and include customization options to filter and prioritize information by severity or recent activity. A quick-access section for frequently used actions or resources could also streamline user interactions and make the dashboard more efficient.",
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const MessageCard(
                    hintText: 'Issues',
                    content:
                        " I’ve found it challenging to quickly locate critical, high-severity alerts, as they’re sometimes mixed in with lower-priority notifications. Navigating to specific threat details could be more streamlined, and filtering options are limited, making it hard to focus on particular types of alerts. Additionally, certain sections, like the alert history, can be slow to load, which disrupts workflow when monitoring for recent activity.",
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  _customizeFeedback(),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    SpecificIssues(),
                    'Specific Issues',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  Text(
                    "Feedback History",
                    style: AppStyle.style2.copyWith(
                      fontSize: scale.getScaledHeight(16),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  _customizeFeedback2(),
                  SizedBox(height: scale.getScaledHeight(50)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRatingStars(UserNotificationDashboardController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return IconButton(
          onPressed: () => controller.updateRating(index + 1),
          icon: Obx(() => Icon(
                Icons.star,
                color: index < controller.selectedRating.value
                    ? Colors.amber
                    : Colors.grey,
                size: 30,
              )),
        );
      }),
    );
  }

  Widget _overlayText(String name, String date) {
    return Positioned(
      top: scale.getScaledHeight(10),
      right: scale.getScaledHeight(10),
      child: Column(
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
      ),
    );
  }

  Widget _customizeFeedback() {
    return Stack(
      children: [
        const DashboardCards(
          MessageContainer(
            hintText: 'Performance',
            content:
                '1. "The application loads quickly, and interactions feel smooth without any noticeable delays."\n2. "I experienced occasional lag when switching between pages, which affects the overall performance."\n3. "The system responds promptly to my inputs, and I haven’t encountered any performance issues."\n4. "The app feels slow at times, especially when loading content-heavy pages or images."\n5. "I appreciate how quickly the features load and execute without significant wait times."',
          ),
          'Customize Feedback',
          AppRoutes.realTimeThreadDetectionScreen,
        ),
        Positioned(
          top: scale.getScaledHeight(20),
          left: scale.getScaledHeight(160),
          child: const Icon(
            Icons.arrow_drop_down_rounded,
            size: 18,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }

  Widget _customizeFeedback2() {
    return Stack(
      children: [
        DashboardCards(
          Column(
            children: [
              const MessageContainer(
                hintText: 'Performance',
                content:
                    '1. "There are frequent performance drops during peak usage hours, which could use improvement."\n2. "Overall, the app runs efficiently, but I noticed a slowdown when accessing certain features."\n3. "The application performs well most of the time, but occasional freezes make it difficult to use."',
              ),
              SizedBox(height: scale.getScaledHeight(16)),
              const MessageContainer(
                hintText: 'Usability',
                content:
                    '1. "The app is very intuitive and easy to navigate, making it user-friendly even for first-time users."\n2. "I find the interface a bit cluttered, and it takes time to find what I need."\n3. "The layout is clear, and I can quickly access all the features I use regularly."\n4. "Some features are hidden in menus, which makes it harder to navigate quickly."',
              ),
            ],
          ),
          'Customize Feedback',
          AppRoutes.realTimeThreadDetectionScreen,
        ),
        Positioned(
          top: scale.getScaledHeight(20),
          left: scale.getScaledHeight(160),
          child: const Icon(
            Icons.arrow_drop_down_rounded,
            size: 18,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }
}
