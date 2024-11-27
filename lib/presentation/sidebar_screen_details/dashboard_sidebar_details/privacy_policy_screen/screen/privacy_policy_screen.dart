import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/presentation/sidebar_screen_details/dashboard_sidebar_details/privacy_policy_screen/controller/privacy_policy_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/drop_down_text.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  const PrivacyPolicyScreen({super.key});

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
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: scale.getScaledHeight(16)),
                          child: Text(
                            "Privacy Policy for X'orbx Cyber Security",
                            style: AppStyle.style3.copyWith(
                              color: Colors.white,
                              fontSize: scale.getScaledHeight(14),
                            ),
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(16)),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: scale.getScaledHeight(16)),
                          child: Text(
                            "Effective Date: 01/11/2024\nAt X'orbx Cyber Security, we value your privacy and are committed to protecting your personal information. This Privacy Policy outlines our practices regarding the collection, use, and disclosure of information that you may provide to us when you visit our website, use our services, or engage with us in any way.",
                            style: AppStyle.style3.copyWith(
                              color: Colors.white,
                              fontSize: scale.getScaledHeight(14),
                            ),
                          ),
                        ),
                        DropDownText(
                          title: "1. Information We Collect",
                          items: const [
                            'We may collect the following types of information:\n• Personal Information: This includes your name, email address, phone number, and any other information you voluntarily provide when you fill out forms on our website or interact with our services.\n• Technical Data: We may collect information about your device, browsing actions, and usage patterns, including IP address, browser type, operating system, and the pages you visit on our site.\n• Usage Data: Information about how you use our website and services, including your interaction with content and services offered.'
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "2. How We Use Your Information",
                          items: const [
                            "We may use the information we collect for various purposes, including:\n• To provide, maintain, and improve our services.\n• To communicate with you, including responding to inquiries and providing customer support.\n• To send you updates, promotional materials, and other information related to our services.\n• To analyze usage trends and gather statistical information to enhance user experience.\n• To protect against and prevent fraudulent activity, and to comply with legal obligations."
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "3. Sharing Your Information",
                          items: const [
                            "We do not sell, trade, or otherwise transfer your personal information to outside parties without your consent, except as follows: • Service Providers: We may share your information with third-party vendors and service providers who assist us in operating our website and providing our services. • Legal Compliance: We may disclose your information if required by law, in response to legal requests, or to protect our rights and property. • Business Transfers: In the event of a merger, acquisition, or sale of all or a portion of our assets, your information may be transferred as part of that transaction."
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "4. Security of Your Information",
                          items: const [
                            "We implement appropriate technical and organizational measures to protect the security of your personal information. However, no method of transmission over the internet or method of electronic storage is 100% secure. While we strive to protect your information, we cannot guarantee its absolute security."
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "5. Your Rights",
                          items: const [
                            "You have the following rights regarding your personal information: • Access: You have the right to request access to the personal information we hold about you. • Correction: You can request that we correct any inaccurate or incomplete information. • Deletion: You can request the deletion of your personal information, subject to our legal obligations. • Opt-Out: You may opt-out of receiving marketing communications from us by following the unsubscribe instructions provided in our emails."
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "6. Cookies and Tracking Technologies",
                          items: const [
                            "Our website may use cookies and similar tracking technologies to enhance your experience. You can manage your cookie preferences through your browser settings. Please note that disabling cookies may affect your ability to use certain features of our website."
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "7. Third-Party Links",
                          items: const [
                            "Our website may contain links to third-party websites. We do not control these websites and are not responsible for their privacy practices. We encourage you to review the privacy policies of any third-party sites you visit."
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "8. Changes to This Privacy",
                          items: const [
                            "Policy We may update this Privacy Policy from time to time. Any changes will be effective upon posting the revised policy on our website with the updated effective date. We encourage you to review this Privacy Policy periodically for any changes."
                          ],
                          scale: scale,
                        ),
                        DropDownText(
                          title: "9. Contact Us",
                          items: const [
                            'If you have any questions or concerns about this Privacy Policy or our privacy practices, please contact us at:\n\nXorbx Cyber Security\n130 King St W, Toronto, ON M5X 2A2,\nCanada\nlegal@xorbx.com'
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
