import 'package:flutter/material.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class DropDownOptions extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> items;
  final ScalingUtility scale;

  const DropDownOptions({
    super.key,
    required this.icon,
    required this.title,
    required this.items,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
      title: Text(
        title,
        style: AppStyle.style3.copyWith(
          color: Colors.white,
          fontSize: scale.getScaledHeight(14),
        ),
      ),
      backgroundColor: Colors.transparent,
      collapsedIconColor: Colors.white,
      iconColor: Colors.white,
      shape: RoundedRectangleBorder(),
      children: items
          .map(
            (item) => Padding(
              padding: EdgeInsets.only(
                left: scale.getScaledHeight(60),
                bottom: scale.getScaledHeight(8),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: scale.getScaledHeight(8),
                    ),
                    Text(
                      item,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: scale.getScaledHeight(12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
