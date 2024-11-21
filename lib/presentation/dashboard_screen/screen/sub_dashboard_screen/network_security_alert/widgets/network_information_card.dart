import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/container_decoration.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class NetworkInformationCard extends StatelessWidget {
  const NetworkInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Column(
      children: [
        _threatAlertCards(
          'Azn-Net',
          'WiFi',
          Colors.green,
        ),
        SizedBox(
          height: scale.getScaledHeight(12),
        ),
        _threatAlertCards(
          'Iphone-12 Pro',
          'Cellular',
          Colors.green,
        ),
      ],
    );
  }

  Widget _threatAlertCards(String name, String txt, Color color) {
    return ShadowBorderCard(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: scale.getScaledHeight(5),
                backgroundColor: color,
              ),
              SizedBox(
                width: scale.getScaledHeight(5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: scale.getScaledHeight(10),
                  ),
                  Text(
                    name,
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(12),
                    ),
                  ),
                  Text(
                    'Network Type: $txt',
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomPaint(
            painter: InnerShadowPainter(),
            child: Container(
              height: scale.getScaledHeight(30),
              width: scale.getScaledHeight(30),
              decoration: cardDecoration(),
              child: Center(
                child: Icon(
                  Icons.verified_outlined,
                  size: scale.getScaledHeight(18),
                  color: Colors.white54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
