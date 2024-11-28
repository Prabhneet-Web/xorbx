import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DetailedTransactionHistory extends StatelessWidget {
  const DetailedTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Padding(
      padding: EdgeInsets.all(scale.getScaledHeight(8)),
      child: Container(
        color: ColorConstant.color1,
        child: Column(
          children: [
            _itemTextField(scale),
            SizedBox(height: scale.getScaledHeight(20)),
            _items(scale, "Transaction: Online Deposit", Colors.green),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Transaction: Grocery Store Purchase", Colors.orange),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Transaction: Monthly Subscription", Colors.orange),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(
                scale, "Transaction: Bank Transfer Withdrawal", Colors.green),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Transaction: Cash Deposit", Colors.green),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Transaction: ATM Withdrawal", Colors.green),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Transaction: Grocery Store Purchase", Colors.orange),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Transaction: ATM Withdrawal", Colors.orange),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Transaction: Online Deposit", Colors.green),
            SizedBox(height: scale.getScaledHeight(20)),
            _buttonItems(scale),
          ],
        ),
      ),
    );
  }

  Widget _itemTextField(ScalingUtility scale) {
    final TextEditingController controller = TextEditingController();
    return Stack(
      children: [
        TextField(
          controller: controller,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search by Transactions',
            hintStyle: const TextStyle(color: Colors.white70),
            filled: true,
            fillColor: Colors.blueGrey,
            prefixIcon: const Icon(Icons.search, color: Colors.white70),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
          ),
        ),
        Positioned(
          top: scale.getScaledHeight(17),
          right: scale.getScaledHeight(20),
          child: Icon(
            Icons.format_align_center_outlined,
            color: Colors.white,
            size: scale.getScaledHeight(20),
          ),
        ),
      ],
    );
  }

  Widget _items(ScalingUtility scale, String txt, Color color) {
    return Stack(
      children: [
        ShadowBorderCard(
          content: Padding(
            padding: EdgeInsets.symmetric(
              vertical: scale.getScaledHeight(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date: 2024-10-01",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(10),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Amount: +\$100.00",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(10),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Type: Deposit",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: Icon(
            Icons.circle,
            size: 12,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buttonItems(ScalingUtility scale) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: ColorConstant.color3,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          child: Text(
            'Export PDF',
            style: AppStyle.style3.copyWith(
              fontSize: scale.getScaledHeight(9),
            ),
          ),
        ),
        SizedBox(
          width: scale.getScaledHeight(10),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          child: Text(
            'Export CSV',
            style: AppStyle.style3.copyWith(
              fontSize: scale.getScaledHeight(9),
            ),
          ),
        ),
      ],
    );
  }
}
