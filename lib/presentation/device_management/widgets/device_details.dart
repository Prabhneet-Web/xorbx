import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DeviceDetails extends StatelessWidget {
  const DeviceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Padding(
      padding: EdgeInsets.all(scale.getScaledHeight(8)),
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            _items(
              scale,
              "12345678",
            ),
            SizedBox(height: scale.getScaledHeight(20)),
            _buttonItems(scale),
          ],
        ),
      ),
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
                  "Device ID: ",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(9),
                  ),
                ),
                SizedBox(height: scale.getScaledHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Description:",
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
                      "Manufacturer: ",
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
                      "Firmware Version",
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
                      "Example Device",
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
                        Text(
                          "XYZ, Crop",
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
                      "1.0.1",
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
            'Save Changes',
            style: AppStyle.style3.copyWith(
              fontSize: scale.getScaledHeight(12),
            ),
          ),
        ),
        SizedBox(
          width: scale.getScaledHeight(10),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: ColorConstant.greyButton,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          child: Text(
            'Cancel',
            style: AppStyle.style3.copyWith(
              fontSize: scale.getScaledHeight(12),
            ),
          ),
        ),
      ],
    );
  }
}
