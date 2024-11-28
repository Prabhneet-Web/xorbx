import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/wallet/controllers/payment_methods_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';

class PaymentMethodsScreen extends GetWidget<PaymentMethodsController> {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          SingleChildScrollView(
            child: SafeArea(
              child: Container(
                padding: scale.getPadding(left: 14, right: 14, top: 8),
                width: scale.fw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Get.back(),
                          child: const Icon(Icons.arrow_back_ios,
                              color: ColorConstant.buttonBorder, size: 16,),
                        ),
                        SizedBox(width: scale.getScaledWidth(4)),
                        Text("Payment Methods",
                            textAlign: TextAlign.center,
                            style: AppStyle.style5.copyWith(
                                letterSpacing: 1.2,
                                fontSize: scale.getScaledFont(18))),
                      ],
                    ),
                    SizedBox(height: scale.getScaledHeight(12)),
                    Text("Your Payement Methods", style: AppStyle.style1,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
