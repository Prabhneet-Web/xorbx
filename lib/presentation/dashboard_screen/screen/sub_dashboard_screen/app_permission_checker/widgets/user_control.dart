import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class UserControl extends StatelessWidget {
  const UserControl({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            'Review apps with high-risk permissions',
            Colors.green,
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'Security check for better management',
            Colors.red,
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(String name, Color color, ScalingUtility scale) {
    return Column(
      children: [
        ShadowBorderCard(
          content: Padding(
            padding: EdgeInsets.symmetric(
              vertical: scale.getScaledHeight(5),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: scale.getScaledHeight(5.5),
                  backgroundColor: color,
                ),
                SizedBox(
                  width: scale.getScaledHeight(10),
                ),
                Text(
                  name,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
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
                backgroundColor: ColorConstant.color3,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              child: Text(
                'Change Permission',
                style: AppStyle.style3.copyWith(
                  fontSize: 7,
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
                'Report Suspecious Behavior',
                style: AppStyle.style3.copyWith(
                  fontSize: 7,
                ),
              ),
            ),
            SizedBox(
              width: scale.getScaledHeight(10),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              child: Text(
                'Block Apps',
                style: AppStyle.style3.copyWith(
                  fontSize: 7,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
