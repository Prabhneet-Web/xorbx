import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class CashbackOffers extends StatelessWidget {
  const CashbackOffers({super.key});

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
            _items(scale, "Electro City"),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Foodie's Heaven"),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "FitLife Gym"),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "EcoLiving"),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "MegaMart"),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "Book Haven"),
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
            hintText: 'Search by Offers',
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

  Widget _items(ScalingUtility scale, String txt) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          vertical: scale.getScaledHeight(5),
          horizontal: scale.getScaledHeight(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(ImageConstants.person),
                      radius: scale.getScaledHeight(13),
                    ),
                    SizedBox(width: scale.getScaledHeight(10)),
                    Text(
                      txt,
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(14),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Text(
                  "12% Cashback on Home Products",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Highest Cashback",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(12),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Note: Expires in 10 Days",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(9),
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                _buttonItems(scale),
              ],
            ),
          ],
        ),
      ),
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
            'View Details',
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
            'Repeat Transaction',
            style: AppStyle.style3.copyWith(
              fontSize: scale.getScaledHeight(9),
            ),
          ),
        ),
      ],
    );
  }
}
