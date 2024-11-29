import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/controllers/payment_methods_controller.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/shadow_card.dart';

class PaymentMethodsScreen extends GetWidget<PaymentMethodsController> {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          Container(
            padding: scale.getPadding(left: 14, right: 14, top: 8),
            width: scale.fw,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Get.back(),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: ColorConstant.buttonBorder,
                            size: 16,
                          ),
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
                    Text("Your Payment Methods", style: AppStyle.style1),
                    SizedBox(height: scale.getScaledHeight(20)),
                    ListView.separated(
                      itemBuilder: (context, index) => CommonShadowWidget(
                          dynamicChild: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CommonNetworkImageView(
                          url: ImageConstants.paypalLogo,
                          height: scale.getScaledFont(50),
                          width: scale.getScaledFont(50),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Paypal Method", style: AppStyle.style1.copyWith(fontSize: scale.getScaledFont(14)),),
                            Text("Account No: 000xxxx1234", style: AppStyle.style3.copyWith(fontSize: scale.getScaledFont(10)),)
                          ],
                        ),
                        trailing: SizedBox(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledWidth(78),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: scale.getScaledWidth(38),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    backgroundColor: ColorConstant.color3,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                  ),
                                  child: Text(
                                    'Edit',
                                    style: AppStyle.style3.copyWith(
                                      fontSize: scale.getScaledHeight(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: scale.getScaledWidth(4)),
                              const Icon(Icons.delete_forever, color: ColorConstant.white,)
                            ],
                          ),
                        ),
                      )),
                      itemCount: 4,
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(height: scale.getScaledHeight(16)),
                    ),
                    SizedBox(height: scale.getScaledHeight(60),),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.addPaymentMethods);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstant.color4,
                          fixedSize: Size(scale.fw,
                              scale.getScaledHeight(50)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(scale.getScaledHeight(12)),
                            ),
                          ),
                        ),
                        child: Text(
                          'Add Payment Method',
                          style: AppStyle.style3.copyWith(
                            fontSize: scale.getScaledHeight(20),
                            fontWeight: FontWeight.w700,
                            color: ColorConstant.color1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
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
