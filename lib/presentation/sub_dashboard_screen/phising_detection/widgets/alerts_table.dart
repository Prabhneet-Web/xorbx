import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class AlertsTable extends StatelessWidget {
  const AlertsTable({super.key});

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
            _items(scale, "A123"),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "B456"),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "C789"),
            SizedBox(height: scale.getScaledHeight(15)),
            _items(scale, "D101"),
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
            hintText: 'Search by Accounts',
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
                Text(
                  "Alert ID: ",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Timestamp: ",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(9),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Detection Method: ",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(9),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          txt,
                          style: AppStyle.style1.copyWith(
                            fontSize: scale.getScaledHeight(9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "10/25/2024  9:05 AM",
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(9),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.search,
                          size: 16,
                          color: Colors.white,
                        ),
                        SizedBox(width: scale.getScaledHeight(5)),
                        Text(
                          "URL Analysis",
                          style: AppStyle.style1.copyWith(
                            fontSize: scale.getScaledHeight(9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
