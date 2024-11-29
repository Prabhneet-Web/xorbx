import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _itemsSection(
            const Icon(
              Icons.credit_card,
              color: Colors.white,
            ),
            "Credit Card /Paypal Method",
          ),
          SizedBox(height: scale.getScaledHeight(16)),
          _itemsSection(
            const Icon(
              Icons.paypal,
              color: Colors.white,
            ),
            "Secure Payment",
          ),
        ],
      ),
    );
  }

  Widget _itemsSection(Icon icon, String name) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(5)),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: scale.getScaledHeight(10),
            ),
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
