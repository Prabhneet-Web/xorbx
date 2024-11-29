import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class ButtonsAndActions extends StatelessWidget {
  const ButtonsAndActions({super.key});

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
        ],
      ),
    );
  }

  Widget _items(String name, ScalingUtility scale) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                fixedSize: Size((scale.fw - 120), scale.getScaledHeight(20)),
                backgroundColor: Colors.orange,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              child: Text(
                'Reset Data',
                style: AppStyle.style3.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: scale.getScaledHeight(10)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Are you sure you want to reset your data usage tracking? This action cannot be undone.',
            style: AppStyle.style1.copyWith(
              fontSize: scale.getScaledHeight(10),
              color: Colors.white54,
            ),
          ),
        ),
        SizedBox(height: scale.getScaledHeight(30)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                fixedSize: Size((scale.fw - 120), scale.getScaledHeight(20)),
                backgroundColor: ColorConstant.color3,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              child: Text(
                'View historical data Usage',
                style: AppStyle.style3.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
