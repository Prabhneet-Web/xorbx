import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DataSharingPractices extends StatelessWidget {
  const DataSharingPractices({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            'Security Application',
            Colors.green,
            "Yes",
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'File Management Application',
            Colors.green,
            "Yes",
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'Risk Protection Application',
            Colors.red,
            "No",
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(String name, Color color, String txt, ScalingUtility scale) {
    return Column(
      children: [
        ShadowBorderCard(
          content: Padding(
            padding: EdgeInsets.symmetric(
              vertical: scale.getScaledHeight(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(11),
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: scale.getScaledHeight(5),
                      backgroundColor: color,
                    ),
                    SizedBox(
                      width: scale.getScaledHeight(6),
                    ),
                    Text(
                      txt,
                      style: AppStyle.style1.copyWith(
                        fontSize: scale.getScaledHeight(11),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: scale.getScaledHeight(10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                fixedSize:
                    Size(scale.getScaledHeight(190), scale.getScaledHeight(30)),
                backgroundColor: ColorConstant.color3,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              child: Text(
                'Change Permission',
                style: AppStyle.style3.copyWith(
                  fontSize: 9,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
