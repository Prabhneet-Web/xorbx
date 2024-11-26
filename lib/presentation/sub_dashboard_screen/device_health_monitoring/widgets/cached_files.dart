import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class CachedFiles extends StatelessWidget {
  const CachedFiles({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            'Large Files',
            const Icon(
              Icons.check_circle_outline_rounded,
              size: 17,
            ),
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          _items(
            'Cached Files',
            const Icon(
              Icons.warning_amber_rounded,
              size: 17,
            ),
            scale,
          ),
        ],
      ),
    );
  }

  Widget _items(String name, Icon icon, ScalingUtility scale) {
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
                Text(
                  name,
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(12),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        fixedSize: Size(
                            (scale.fw - 150) / 3, scale.getScaledHeight(20)),
                        backgroundColor: Colors.red,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      child: Text(
                        'Delete',
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
                        fixedSize: Size(
                            (scale.fw - 100) / 3, scale.getScaledHeight(20)),
                        backgroundColor: ColorConstant.color3,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      child: Text(
                        'Move To Cloud',
                        style: AppStyle.style3.copyWith(
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
