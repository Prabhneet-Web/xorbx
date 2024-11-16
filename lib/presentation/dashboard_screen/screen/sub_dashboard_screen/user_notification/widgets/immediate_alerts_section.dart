import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class ImmediateAlertsSection extends StatelessWidget {
  const ImmediateAlertsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          Column(
            children: [
              ShadowBorderCard(
                content: Stack(
                  children: [
                    _itemsSection(
                      'Malware Presence',
                      'A Security Threat involves potential risks or actions that\nmay harm the confidentiality, integrity, or availability of an\ninformation system or network.',
                    ),
                    Positioned(
                      top: scale.getScaledHeight(5),
                      right: scale.getScaledHeight(0),
                      child: CustomPaint(
                        painter: InnerShadowPainter(),
                        child: Container(
                          height: scale.getScaledHeight(30),
                          width: scale.getScaledHeight(30),
                          decoration: BoxDecoration(
                            color: ColorConstant.color1,
                            borderRadius: BorderRadius.circular(
                                scale.getScaledHeight(10)),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.warning_amber_rounded,
                              size: 18,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: scale.getScaledHeight(10),
              ),
              _items(),
              SizedBox(
                height: scale.getScaledHeight(10),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(12),
          ),
          Column(
            children: [
              ShadowBorderCard(
                  content: _itemsSection(
                'Device Overheating',
                'It occurs when the internal temperature of a device, such\nas a smartphone, computer, or other electronic equipment,\nexceeds safe operating limits. This can lead to\nperformance degradation, hardware damage, and even\npotential safty risks of not addressed promptly.',
              )),
              SizedBox(
                height: scale.getScaledHeight(10),
              ),
              _items(),
              SizedBox(
                height: scale.getScaledHeight(10),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _items() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            fixedSize: Size((scale.fw - 120) / 3, scale.getScaledHeight(20)),
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
            fixedSize: Size((scale.fw - 120) / 3, scale.getScaledHeight(20)),
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
            fixedSize: Size((scale.fw - 120) / 3, scale.getScaledHeight(20)),
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
    );
  }

  Widget _itemsSection(String name, String txt) {
    return Row(
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
                radius: scale.getScaledHeight(5.5),
                backgroundColor: Colors.red,
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
            Text(
              txt,
              style: AppStyle.style1.copyWith(
                fontSize: scale.getScaledHeight(7),
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
