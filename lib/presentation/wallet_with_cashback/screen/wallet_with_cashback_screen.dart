import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/widgets/dashboard_cards.dart';
import 'package:xorbx/presentation/wallet_with_cashback/controller/wallet_with_cashback_controller.dart';
import 'package:xorbx/presentation/wallet_with_cashback/widgets/breakdown_by_category.dart';
import 'package:xorbx/presentation/wallet_with_cashback/widgets/cashback_offers.dart';
import 'package:xorbx/presentation/wallet_with_cashback/widgets/detailed_transaction_history.dart';
import 'package:xorbx/presentation/wallet_with_cashback/widgets/overview_of_cashback.dart';
import 'package:xorbx/presentation/wallet_with_cashback/widgets/recent_transactions.dart';
import 'package:xorbx/presentation/wallet_with_cashback/widgets/security_features.dart';
import 'package:xorbx/presentation/wallet_with_cashback/widgets/wallet_overview.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class WalletWithCashbackScreen extends GetWidget<WalletWithCashbackController> {
  const WalletWithCashbackScreen({super.key});

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
                        Get.toNamed(AppRoutes.walletSidebarScreen);
                      },
                      icon: const Icon(
                        Icons.menu_outlined,
                        color: ColorConstant.color4,
                      ),
                    ),
                    SizedBox(width: scale.getScaledHeight(5)),
                    Text(
                      'Wallet with Cash-back',
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
                        _showPopup(context);
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const DashboardCards(
                      WalletOverview(),
                      'Wallet Overview',
                      AppRoutes.realTimeThreadDetectionScreen,
                    ),
                    SizedBox(height: scale.getScaledHeight(16)),
                    const DashboardCards(
                      RecentTransactions(),
                      'Recent Transactions',
                      AppRoutes.realTimeThreadDetectionScreen,
                    ),
                    SizedBox(height: scale.getScaledHeight(16)),
                    Text(
                      "Cash-back Section",
                      style: AppStyle.style2.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: scale.getScaledHeight(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const DashboardCards(
                          OverviewOfCashback(),
                          'Overview of\nCash-back',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                        SizedBox(width: scale.getScaledHeight(16)),
                        const DashboardCards(
                          BreakdownByCategory(),
                          'Breakdown by\nCategory',
                          AppRoutes.realTimeThreadDetectionScreen,
                        ),
                      ],
                    ),
                    SizedBox(height: scale.getScaledHeight(16)),
                    const DashboardCards(
                      CashbackOffers(),
                      'Cashback Offers',
                      AppRoutes.realTimeThreadDetectionScreen,
                    ),
                    SizedBox(height: scale.getScaledHeight(16)),
                    const DashboardCards(
                      DetailedTransactionHistory(),
                      'Detailed Transaction History',
                      AppRoutes.realTimeThreadDetectionScreen,
                    ),
                    SizedBox(height: scale.getScaledHeight(16)),
                    const DashboardCards(
                      SecurityFeatures(),
                      'Security Features',
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

  void _showPopup(BuildContext context) {
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
                    width: scale.getScaledHeight(160),
                    child: ShadowBorderCard(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: scale.getScaledHeight(20)),
                          Row(
                            children: [
                              SizedBox(width: scale.getScaledHeight(10)),
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
                              SizedBox(width: scale.getScaledHeight(10)),
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
                          SizedBox(height: scale.getScaledHeight(20)),
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
