import 'package:flutter/material.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/user_notification_dashboard_screen/widgets/message_container.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class MessageCard extends StatelessWidget {
  final String hintText;
  final String content;

  const MessageCard({
    super.key,
    required this.hintText,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowBorderCard(
        content: MessageContainer(hintText: hintText, content: content));
  }
}
