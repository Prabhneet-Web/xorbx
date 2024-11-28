import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/wallet/controllers/withdraw_funds_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/custom_text_field.dart';
import 'package:xorbx/widgets/funds_successfully_widget.dart';
import 'package:xorbx/widgets/shadow_card.dart';

class WithdrawFundsScreen extends GetWidget<WithdrawFundsController> {
  const WithdrawFundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: scale.getScaledFont(50),
            width: scale.getScaledFont(50),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorConstant.color5),
            child: Icon(
              Icons.add,
              size: scale.getScaledFont(24),
              color: ColorConstant.white,
            ),
          ),
          SizedBox(height: scale.getScaledHeight(3)),
          Text(
            "Add New\nPayment",
            style: AppStyle.style1
                .copyWith(fontSize: scale.getScaledFont(9)),
          ),
          SizedBox(height: scale.getScaledHeight(150)),
        ],
      ),
      body: BackgroundEffect(dynamicChildren: [
        SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: scale.getPadding(left: 14, right: 14, top: 8),
              height: scale.fh,
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
                  SizedBox(height: scale.getScaledHeight(26)),
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
                  SizedBox(height: scale.getScaledHeight(70)),
                  ElevatedButton(
                    onPressed: () {
                      Get.dialog(FundsSuccessfullyWidget(title: "Funds Successfully\nWithdraw!"));
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
                      'Confirmed Withdrawal',
                      style: AppStyle.style3.copyWith(
                        fontSize: scale.getScaledHeight(20),
                        fontWeight: FontWeight.w700,
                        color: ColorConstant.color1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
