import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class UserControls extends StatelessWidget {
  const UserControls({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            'User login anomaly.',
            Colors.red,
            const Icon(
              Icons.check_circle_outline_rounded,
              size: 17,
              color: Colors.green,
            ),
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'Suspicious data access.',
            Colors.orange,
            const Icon(
              Icons.warning_amber_rounded,
              size: 17,
              color: Colors.orange,
            ),
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'New app permissions request.',
            Colors.red,
            const Icon(
              Icons.check_circle_outline_rounded,
              size: 17,
              color: Colors.green,
            ),
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(String name, Color color, Icon icon, ScalingUtility scale) {
    return Column(
      children: [
        ShadowBorderCard(
          content: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: scale.getScaledHeight(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                CustomPaint(
                  painter: InnerShadowPainter(),
                  child: Container(
                    height: scale.getScaledHeight(30),
                    width: scale.getScaledHeight(30),
                    decoration: BoxDecoration(
                      color: ColorConstant.color1,
                      borderRadius:
                          BorderRadius.circular(scale.getScaledHeight(10)),
                    ),
                    child: Center(child: icon),
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
                'Ignore',
                style: AppStyle.style3.copyWith(
                  fontSize: 9,
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
                'Report',
                style: AppStyle.style3.copyWith(
                  fontSize: 9,
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
                'Investigate',
                style: AppStyle.style3.copyWith(
                  fontSize: 9,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: scale.getScaledHeight(10),
        ),
      ],
    );
  }
}
