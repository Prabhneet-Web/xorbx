import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class WalletOverview extends StatelessWidget {
  const WalletOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Padding(
      padding: EdgeInsets.all(scale.getScaledHeight(8)),
      child: Container(
        color: ColorConstant.color1,
        child: Column(
          children: [
            _items(scale),
          ],
        ),
      ),
    );
  }

  Widget _items(ScalingUtility scale) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          vertical: scale.getScaledHeight(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Current Balance: \$500",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(17),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _customButton(
                        scale, "Transfer Funds", AppRoutes.transferFunds),
                    SizedBox(width: scale.getScaledHeight(10)),
                    _customButton(
                        scale, "Withdraw Funds", AppRoutes.withdrawFunds),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _customButton(scale, "Add Funds", AppRoutes.addFunds),
                    SizedBox(width: scale.getScaledHeight(10)),
                    _customButton(scale, "Transaction History",
                        AppRoutes.transactionHistory),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _customButton(ScalingUtility scale, String buttonTitle, String route) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Get.toNamed(route);
        },
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstant.color4,
            borderRadius: BorderRadius.all(
              Radius.circular(scale.getScaledHeight(6)),
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: scale.getScaledHeight(10),
            horizontal: scale.getScaledHeight(20),
          ),
          child: Text(
            buttonTitle,
            style: AppStyle.style3.copyWith(
              color: ColorConstant.color1,
              fontSize: scale.getScaledHeight(9),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
