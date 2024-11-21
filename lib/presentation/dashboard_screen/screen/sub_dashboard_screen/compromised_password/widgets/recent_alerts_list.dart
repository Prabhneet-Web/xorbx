import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class RecentAlertsList extends StatelessWidget {
  const RecentAlertsList({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            'Account Name: Social media',
            Colors.red,
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'Account Name: Email',
            Colors.green,
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(String name, Color color, ScalingUtility scale) {
    return Column(
      children: [
        _itemsSection(name, color),
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
                'Reset Password',
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
                'Enable Two factors Authentication',
                style: AppStyle.style3.copyWith(
                  fontSize: scale.getScaledHeight(9),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _itemsSection(String name, Color color) {
    return ShadowBorderCard(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: scale.getScaledHeight(3),
                ),
                child: CircleAvatar(
                  radius: scale.getScaledHeight(5),
                  backgroundColor: color,
                ),
              ),
            ],
          ),
          SizedBox(
            width: scale.getScaledHeight(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(12),
                ),
              ),
              SizedBox(
                height: scale.getScaledHeight(6),
              ),
              Row(
                children: [
                  Text(
                    "Date of Compromised:",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                    ),
                  ),
                  SizedBox(
                    width: scale.getScaledHeight(6),
                  ),
                  Text(
                    'November 02, 2024',
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
