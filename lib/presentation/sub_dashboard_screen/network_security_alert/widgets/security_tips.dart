import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class SecurityTips extends StatelessWidget {
  const SecurityTips({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            'Enable multi-factor authentication. (Read More)',
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'Regularly update software and apps.(Read More)',
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  fixedSize: Size(
                      scale.getScaledHeight(240), scale.getScaledHeight(30)),
                  backgroundColor: ColorConstant.color3,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                child: Text(
                  'View FAQS',
                  style: AppStyle.style3.copyWith(
                    fontSize: scale.getScaledHeight(14),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  fixedSize: Size(
                      scale.getScaledHeight(240), scale.getScaledHeight(30)),
                  backgroundColor: ColorConstant.color3,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                child: Text(
                  'Contact Support',
                  style: AppStyle.style3.copyWith(
                    fontSize: scale.getScaledHeight(14),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _items(String name, ScalingUtility scale) {
    return Column(
      children: [
        _itemsSection(name),
        SizedBox(
          height: scale.getScaledHeight(10),
        ),
      ],
    );
  }

  Widget _itemsSection(String name) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: scale.getScaledHeight(5)),
        child: Row(
          children: [
            Text(
              name,
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(11),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
