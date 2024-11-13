import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';

class SidebarScreen extends GetWidget {
  const SidebarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          SafeArea(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: scale.getScaledHeight(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Xorbx',
                        style: AppStyle.style3.copyWith(
                          color: Colors.white,
                          fontSize: scale.getScaledHeight(32),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.close, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(20)),
                  Expanded(
                    child: ListView(
                      children: [
                        SidebarSection(
                          icon: Icons.description,
                          title: "Overview",
                          items: const [],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.warning,
                          title: "Security Alerts",
                          items: const [],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.book,
                          title: "Legal",
                          items: const [
                            "Copyright Policy",
                            "Terms & Conditions",
                            "Data Provider Attribution"
                          ],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.settings,
                          title: "General Settings",
                          items: const [
                            "Language Preference",
                            "Arabic",
                            "English"
                          ],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.person,
                          title: "Account Information",
                          items: const [
                            "Email address",
                            "Username",
                            "Profile picture"
                          ],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.privacy_tip,
                          title: "Privacy Settings",
                          items: const [],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.security,
                          title: "Security Settings",
                          items: const [
                            "Password Management",
                            "Biometric Security",
                            "Device Management"
                          ],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.data_usage,
                          title: "Data Management",
                          items: const [
                            "Backup & Sync",
                            "Data Usage",
                            "Clear Cache/Data"
                          ],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.manage_accounts,
                          title: "Account Management",
                          items: const [
                            "Subscription Information",
                            "Payment Methods"
                          ],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.support,
                          title: "Support & Feedback",
                          items: const [
                            "Help & Support",
                            "Send Feedback",
                            "App Version Info"
                          ],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.logout,
                          title: "Logout",
                          items: const [],
                          scale: scale,
                        ),
                        SidebarSection(
                          icon: Icons.history,
                          title: "Version History",
                          items: const [],
                          scale: scale,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SidebarSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> items;
  final ScalingUtility scale;

  const SidebarSection({
    super.key,
    required this.icon,
    required this.title,
    required this.items,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style:
            TextStyle(color: Colors.white, fontSize: scale.getScaledHeight(18)),
      ),
      backgroundColor: Colors.transparent,
      collapsedIconColor: Colors.white,
      children: items
          .map((item) => Padding(
                padding: EdgeInsets.only(
                  left: scale.getScaledHeight(16),
                  bottom: scale.getScaledHeight(8),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item,
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: scale.getScaledHeight(16)),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
