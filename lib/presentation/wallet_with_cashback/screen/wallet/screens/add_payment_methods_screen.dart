import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/controllers/add_payment_methods_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/custom_text_field.dart';
import 'package:xorbx/widgets/funds_successfully_widget.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class AddPaymentMethodsScreen extends GetWidget<AddPaymentMethodsController> {
  const AddPaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          Container(
            padding: scale.getPadding(left: 16, right: 16, top: 8),
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
                        Text("Add Payment Methods",
                            textAlign: TextAlign.center,
                            style: AppStyle.style5.copyWith(
                                letterSpacing: 1.2,
                                fontSize: scale.getScaledFont(18))),
                      ],
                    ),
                    SizedBox(height: scale.getScaledHeight(20)),
                    ShadowBorderCard(
                        content: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter Card Details",
                              textAlign: TextAlign.center,
                              style: AppStyle.style6
                                  .copyWith(fontSize: scale.getScaledFont(14))),
                          SizedBox(height: scale.getScaledHeight(14)),
                          CustomTextField(
                            hintText: 'CardHolder Name',
                            onChanged: (value) =>
                                controller.cardHolderName?.value = value,
                          ),
                          SizedBox(height: scale.getScaledHeight(12)),
                          CustomTextField(
                            hintText: 'Card Name',
                            onChanged: (value) =>
                                controller.cardHolderName?.value = value,
                          ),
                          SizedBox(height: scale.getScaledHeight(12)),
                          Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  icon: Icons.calendar_month,
                                  hintText: 'Expiry Date',
                                  onChanged: (value) =>
                                      controller.expiry?.value = value,
                                ),
                              ),
                              SizedBox(width: scale.getScaledWidth(16)),
                              Expanded(
                                child: CustomTextField(
                                  icon: Icons.payment,
                                  hintText: 'CVV',
                                  onChanged: (value) =>
                                      controller.cvv?.value = value,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: scale.getScaledHeight(12)),
                          CustomTextField(
                            hintText: 'Billing Address',
                            onChanged: (value) =>
                                controller.billingAddress?.value = value,
                          ),
                          SizedBox(height: scale.getScaledHeight(12)),
                          Theme(
                            data: ThemeData()
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              tilePadding: EdgeInsets.zero,
                              iconColor: ColorConstant.buttonBorder,
                              initiallyExpanded: true,
                              title: Text("Choose payment method",
                                  style: AppStyle.style6.copyWith(
                                      fontSize: scale.getScaledFont(16))),
                              children: [
                                Padding(
                                  padding: scale.getPadding(
                                      vertical: 10, horizontal: 8),
                                  child: Row(
                                    children: [
                                      Icon(Icons.food_bank_outlined,
                                          color: ColorConstant.color6,
                                          size: scale.getScaledFont(22)),
                                      SizedBox(width: scale.getScaledWidth(10)),
                                      Text(
                                        "Bank Transfer",
                                        style: AppStyle.style1,
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                    color: ColorConstant.buttonBorder,
                                    thickness: 0.6),
                                Padding(
                                  padding: scale.getPadding(
                                      vertical: 10, horizontal: 8),
                                  child: Row(
                                    children: [
                                      Icon(Icons.paypal,
                                          color: ColorConstant.color6,
                                          size: scale.getScaledFont(22)),
                                      SizedBox(width: scale.getScaledWidth(10)),
                                      Text(
                                        "Paypal",
                                        style: AppStyle.style1,
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                    color: ColorConstant.buttonBorder,
                                    thickness: 0.6),
                                Padding(
                                  padding: scale.getPadding(
                                      vertical: 10, horizontal: 8),
                                  child: Row(
                                    children: [
                                      Icon(Icons.payment,
                                          color: ColorConstant.color6,
                                          size: scale.getScaledFont(22)),
                                      SizedBox(width: scale.getScaledWidth(10)),
                                      Text(
                                        "Debit/ Credit Cards",
                                        style: AppStyle.style1,
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                    color: ColorConstant.buttonBorder,
                                    thickness: 0.2),
                                Padding(
                                  padding: scale.getPadding(
                                      vertical: 10, horizontal: 8),
                                  child: Row(
                                    children: [
                                      Icon(Icons.wallet,
                                          color: ColorConstant.color6,
                                          size: scale.getScaledFont(22)),
                                      SizedBox(width: scale.getScaledWidth(10)),
                                      Text(
                                        "Mobile Wallets",
                                        style: AppStyle.style1,
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                    color: ColorConstant.buttonBorder,
                                    thickness: 0.8),
                              ],
                            ),
                          ),
                          SizedBox(height: scale.getScaledHeight(12)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Get.dialog(fundsSuccessfullyWidget(
                                      title:
                                          "Payment Method\nAdded\nSuccessfully"));
                                },
                                style: TextButton.styleFrom(
                                  fixedSize: Size(scale.getScaledWidth(80),
                                      scale.getScaledHeight(30)),
                                  backgroundColor: ColorConstant.color3,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                  ),
                                ),
                                child: Text(
                                  'Save',
                                  style: AppStyle.style3.copyWith(
                                    fontSize: scale.getScaledHeight(14),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  fixedSize: Size(scale.getScaledWidth(80),
                                      scale.getScaledHeight(30)),
                                  backgroundColor: ColorConstant.greyButton,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                  ),
                                ),
                                child: Text(
                                  'Cancel',
                                  style: AppStyle.style3.copyWith(
                                    fontSize: scale.getScaledHeight(14),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
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
