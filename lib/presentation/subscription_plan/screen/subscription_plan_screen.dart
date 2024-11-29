import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/presentation/subscription_plan/controller/subscription_plan_controller.dart';
import 'package:xorbx/presentation/subscription_plan/widgets/faqs.dart';
import 'package:xorbx/presentation/subscription_plan/widgets/payment_methods.dart';
import 'package:xorbx/presentation/subscription_plan/widgets/subscriptions_plans_card.dart';
import 'package:xorbx/presentation/subscription_plan/widgets/user_testimonials.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class SubscriptionPlanScreen extends GetWidget<SubscriptionPlanController> {
  const SubscriptionPlanScreen({super.key});

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
                      top: scale.getScaledHeight(25),
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
                          'Subscription Plans',
                          style: AppStyle.style2,
                        ),
                        // const Spacer(),
                        // _overlayText("Last Synced:", "September 01, 2024"),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(5)),
                  const DashboardCards(
                    SubscriptionsPlansCard(),
                    'Subscriptions Plans',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    PaymentMethods(),
                    'Payment Methods',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    Faqs(),
                    'FAQs',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  const DashboardCards(
                    UserTestimonials(),
                    'Users Testimonials',
                    AppRoutes.realTimeThreadDetectionScreen,
                  ),
                  SizedBox(height: scale.getScaledHeight(16)),
                  ShadowBorderCard(
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _itemsSection(
                          "Terms and Conditions",
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        _itemsSection(
                          "Contact Support",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(50)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemsSection(String name) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(5)),
        child: Row(
          children: [
            Text(
              name,
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(11),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
