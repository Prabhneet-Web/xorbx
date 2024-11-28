import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/wallet/controllers/transfer_funds_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/custom_text_field.dart';
import 'package:xorbx/widgets/funds_successfully_widget.dart';
import 'package:xorbx/widgets/shadow_card.dart';

class TransferFundsScreen extends GetWidget<TransferFundsController> {
  const TransferFundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      resizeToAvoidBottomInset: false,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: scale.getScaledFont(50),
            width: scale.getScaledFont(50),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: ColorConstant.color5),
            child: Icon(
              Icons.add,
              size: scale.getScaledFont(24),
              color: ColorConstant.white,
            ),
          ),
          SizedBox(height: scale.getScaledHeight(3)),
          Text(
            "Add New\nPayment",
            style: AppStyle.style1.copyWith(fontSize: scale.getScaledFont(9)),
          ),
          SizedBox(height: scale.getScaledHeight(100)),
        ],
      ),
      body: BackgroundEffect(dynamicChildren: [
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
                      const Icon(Icons.arrow_back_ios,
                          color: ColorConstant.buttonBorder),
                      Expanded(
                          child: Text("Withdraw Funds",
                              textAlign: TextAlign.center,
                              style: AppStyle.style5.copyWith(
                                  letterSpacing: 1.2,
                                  fontSize: scale.getScaledFont(18)))),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(32)),
                  Padding(
                    padding: scale.getPadding(horizontal: 14),
                    child: Text(
                      "Transfer funds securely from your wallet to a linked bank account.",
                      style:
                          AppStyle.style1.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(26)),
                  CommonShadowWidget(
                      dynamicChild: CustomTextField(
                    hintText: 'Amount',
                    onChanged: (value) => controller.amount.value = value,
                  )),
                  SizedBox(height: scale.getScaledHeight(30)),
                  Container(
                    height: scale.getScaledHeight(46),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: ColorConstant.white.withOpacity(0.1)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(2, 8),
                          blurRadius: 12,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 4),
                        child: Row(
                          children: [
                            SizedBox(width: scale.getScaledWidth(16)),
                            Icon(
                              Icons.search,
                              color: Colors.grey.shade400,
                            ),
                            SizedBox(width: scale.getScaledWidth(8)),
                            Expanded(
                              child: TextFormField(
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Search a Recipient',
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade400,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.tune,
                              color: Colors.grey.shade400,
                            ),
                            SizedBox(width: scale.getScaledWidth(16)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(18)),
                  Text("Saved Recipient",
                      style: AppStyle.style6
                          .copyWith(fontSize: scale.getScaledFont(16))),
                  SizedBox(height: scale.getScaledHeight(10)),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(ImageConstants.person),
                      radius: scale.getScaledHeight(16),
                    ),
                    title: Padding(
                      padding: scale.getPadding(left: 12),
                      child: Text("Micheal James", style: AppStyle.style6.copyWith(fontSize: scale.getScaledFont(12)),),
                    ),
                  ),
                  const Divider(
                      color: ColorConstant.buttonBorder, thickness: 0.6),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(ImageConstants.person),
                      radius: scale.getScaledHeight(16),
                    ),
                    title: Padding(
                      padding: scale.getPadding(left: 12),
                      child: Text("Brooklyn Simmons", style: AppStyle.style6.copyWith(fontSize: scale.getScaledFont(12)),),
                    ),
                  ),
                  const Divider(
                      color: ColorConstant.buttonBorder, thickness: 0.6),
                  SizedBox(height: scale.getScaledHeight(10)),
                  Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      iconColor: ColorConstant.buttonBorder,
                      initiallyExpanded: true,
                      title: Text("Choose payment method",
                          style: AppStyle.style6
                              .copyWith(fontSize: scale.getScaledFont(16))),
                      children: [
                        Padding(
                          padding:
                              scale.getPadding(vertical: 10, horizontal: 8),
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
                            color: ColorConstant.buttonBorder, thickness: 0.6),
                        Padding(
                          padding:
                              scale.getPadding(vertical: 10, horizontal: 8),
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
                            color: ColorConstant.buttonBorder, thickness: 0.6),
                        Padding(
                          padding:
                              scale.getPadding(vertical: 10, horizontal: 8),
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
                            color: ColorConstant.buttonBorder, thickness: 0.2),
                        Padding(
                          padding:
                              scale.getPadding(vertical: 10, horizontal: 8),
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
                            color: ColorConstant.buttonBorder, thickness: 0.8),
                      ],
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(40)),
                  ElevatedButton(
                    onPressed: () {
                      Get.dialog(FundsSuccessfullyWidget(
                          title: "Funds Successfully\nTransferred!"));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstant.color4,
                      fixedSize: Size(scale.fh - scale.getScaledHeight(100),
                          scale.getScaledHeight(50)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(scale.getScaledHeight(12)),
                        ),
                      ),
                    ),
                    child: Text(
                      'Send Money',
                      style: AppStyle.style3.copyWith(
                        fontSize: scale.getScaledHeight(20),
                        fontWeight: FontWeight.w700,
                        color: ColorConstant.color1,
                      ),
                    ),
                  ),
                  SizedBox(height: scale.getScaledHeight(20)),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
