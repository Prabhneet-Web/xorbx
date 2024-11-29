import 'package:flutter/material.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

Widget CommonShadowWidget({required Widget dynamicChild}) {
  return ShadowBorderCard(
    content: dynamicChild,
  );
}
