import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/container_decoration.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';

class ShadowBorderCard extends StatelessWidget {
  final Widget? content;
  const ShadowBorderCard({
    super.key,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        decoration: cardDecoration(),
        padding: EdgeInsets.symmetric(
          vertical: scale.getScaledHeight(12),
          horizontal: scale.getScaledHeight(16),
        ),
        child: content,
      ),
    );
  }
}
