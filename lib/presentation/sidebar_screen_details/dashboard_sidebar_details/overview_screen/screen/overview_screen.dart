import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/sidebar_screen_details/dashboard_sidebar_details/overview_screen/controller/overview_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/drop_down_text.dart';

class OverviewScreen extends GetWidget<OverviewController> {
  const OverviewScreen({super.key});

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
                  EdgeInsets.symmetric(horizontal: scale.getScaledHeight(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: scale.getScaledHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: scale.getScaledHeight(10)),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(10)),
                  CommonNetworkImageView(
                    url: ImageConstants.xorbx,
                    height: scale.getScaledHeight(40),
                    width: scale.getScaledHeight(82),
                  ),
                  SizedBox(height: scale.getScaledHeight(30)),
                  Expanded(
                    child: ListView(
                      children: [
                        DropDownText(
                          title:
                              "Overview of X’orbx App: Mobile Cybersecurity Solution",
                          items: const [
                            'Xorbx is a cutting-edge mobile cybersecurity application designed to safeguard users devices from a range of cyber threats. With an emphasis on user-friendly interfaces and advanced security features, X’orbx aims to provide comprehensive protection for mobile users, ensuring their personal information and online activities remain secure. Below are the key features that define Xorbxs offerings:'
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "Real-Time Detection",
                          items: const [
                            'Xorbx is a cutting-edge mobile cybersecurity application designed to safeguard users devices from a range of cyber threats. With an emphasis on user-friendly interfaces and advanced security features, X’orbx aims to provide comprehensive protection for mobile users, ensuring their personal information and online activities remain secure. Below are the key features that define Xorbxs offerings:'
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "App Permission Checker",
                          items: const [
                            'Xorbx is a cutting-edge mobile cybersecurity application designed to safeguard users devices from a range of cyber threats. With an emphasis on user-friendly interfaces and advanced security features, X’orbx aims to provide comprehensive protection for mobile users, ensuring their personal information and online activities remain secure. Below are the key features that define Xorbxs offerings:'
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "Network Security Alerts",
                          items: const [
                            'Xorbx is a cutting-edge mobile cybersecurity application designed to safeguard users devices from a range of cyber threats. With an emphasis on user-friendly interfaces and advanced security features, X’orbx aims to provide comprehensive protection for mobile users, ensuring their personal information and online activities remain secure. Below are the key features that define Xorbxs offerings:'
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "Phishing Detection",
                          items: const [
                            'Xorbx is a cutting-edge mobile cybersecurity application designed to safeguard users devices from a range of cyber threats. With an emphasis on user-friendly interfaces and advanced security features, X’orbx aims to provide comprehensive protection for mobile users, ensuring their personal information and online activities remain secure. Below are the key features that define Xorbxs offerings:'
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "Compromised Password Monitoring",
                          items: const [
                            'Xorbx is a cutting-edge mobile cybersecurity application designed to safeguard users devices from a range of cyber threats. With an emphasis on user-friendly interfaces and advanced security features, X’orbx aims to provide comprehensive protection for mobile users, ensuring their personal information and online activities remain secure. Below are the key features that define Xorbxs offerings:'
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "Device Health Monitoring",
                          items: const [
                            'Xorbx is a cutting-edge mobile cybersecurity application designed to safeguard users devices from a range of cyber threats. With an emphasis on user-friendly interfaces and advanced security features, X’orbx aims to provide comprehensive protection for mobile users, ensuring their personal information and online activities remain secure. Below are the key features that define Xorbxs offerings:'
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "User Notifications",
                          items: const [
                            'Xorbx is a cutting-edge mobile cybersecurity application designed to safeguard users devices from a range of cyber threats. With an emphasis on user-friendly interfaces and advanced security features, X’orbx aims to provide comprehensive protection for mobile users, ensuring their personal information and online activities remain secure. Below are the key features that define Xorbxs offerings:'
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "Customer Feedback",
                          items: const [
                            'Xorbx is a cutting-edge mobile cybersecurity application designed to safeguard users devices from a range of cyber threats. With an emphasis on user-friendly interfaces and advanced security features, X’orbx aims to provide comprehensive protection for mobile users, ensuring their personal information and online activities remain secure. Below are the key features that define Xorbxs offerings:'
                          ],
                          scale: scale,
                        ),
                        SizedBox(height: scale.getScaledHeight(20)),
                        DropDownText(
                          title: "Recap:",
                          items: const [
                            'X’orbx stands out in the mobile cybersecurity landscape by offering a comprehensive suite of features aimed at protecting users from a wide array of cyber threats. With its focus on real-time detection, user engagement, and proactive security measures, Xorbx empowers users to take control of their mobile security, ensuring a safer digital experience.'
                          ],
                          scale: scale,
                        ),
                        SizedBox(height: scale.getScaledHeight(50)),
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
