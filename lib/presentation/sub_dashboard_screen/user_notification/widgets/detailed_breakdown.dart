import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class DetailedBreakdown extends StatelessWidget {
  const DetailedBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            'Phising attack alert.',
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'Malware attack alert.',
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'Health issues alert.',
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(String name, ScalingUtility scale) {
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
                  backgroundColor: Colors.red,
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
                fixedSize:
                    Size((scale.fw - 120) / 3, scale.getScaledHeight(20)),
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
                fixedSize:
                    Size((scale.fw - 120) / 3, scale.getScaledHeight(20)),
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
                fixedSize:
                    Size((scale.fw - 120) / 3, scale.getScaledHeight(20)),
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
