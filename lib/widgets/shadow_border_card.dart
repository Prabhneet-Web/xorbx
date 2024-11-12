import 'package:flutter/material.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';

class ShadowBorderCards extends StatelessWidget {
  Widget child;
  ShadowBorderCards({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        decoration: _cardDecoration(),
        padding: const EdgeInsets.all(16),
        child: child,
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: ColorConstant.color1,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
