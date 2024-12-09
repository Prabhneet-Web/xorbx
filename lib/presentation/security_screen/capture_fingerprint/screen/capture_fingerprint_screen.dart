import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:xorbx/presentation/security_screen/capture_fingerprint/controller/capture_fingerprint_controller.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/background_effect.dart';
import 'package:xorbx/widgets/common_network_image.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';
import 'package:xorbx/widgets/successful_scan.dart';

class CaptureFingerprintScreen extends StatefulWidget {
  const CaptureFingerprintScreen({super.key});

  @override
  State<CaptureFingerprintScreen> createState() =>
      _CaptureFingerprintScreenState();
}

class _CaptureFingerprintScreenState extends State<CaptureFingerprintScreen> {
  late final LocalAuthentication auth;
  bool _supportState = false;

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then(
      (bool isSupported) {
        setState(() {
          _supportState = isSupported;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: BackgroundEffect(
        dynamicChildren: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: scale.getScaledHeight(15),
                  top: scale.getScaledHeight(35),
                  left: scale.getScaledHeight(5),
                  right: scale.getScaledHeight(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Fingerprint Recognition',
                          style: AppStyle.style2,
                        ),
                      ],
                    ),
                    SizedBox(width: scale.getScaledHeight(5)),
                    const Text("")
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: scale.getScaledHeight(5),
                      horizontal: scale.getScaledHeight(16),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: scale.getScaledHeight(5)),
                        ShadowBorderCard(
                          content: SizedBox(
                            height: 400,
                            width: 300,
                            child: CommonNetworkImageView(
                                url: ImageConstants.frame),
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(25)),
                        Text(
                          "Hold on to the camera",
                          style: AppStyle.style1.copyWith(
                            fontSize: scale.getScaledHeight(12),
                          ),
                        ),
                        SizedBox(height: scale.getScaledHeight(45)),
                        _customButton(scale, "Recognize Fingerprint"),
                        SizedBox(height: scale.getScaledHeight(50)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _customButton(ScalingUtility scale, String buttonTitle) {
    return Center(
      child: SizedBox(
        width: scale.getScaledHeight(240),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstant.color4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(scale.getScaledHeight(6)),
              ),
            ),
          ),
          onPressed: () async {
            bool isAuthenticated = await _authenticate();
            if (isAuthenticated) {
              Get.dialog(successfulScan(title: "Successful Scan!"));
            } else {
              Get.snackbar(
                "Authentication Failed",
                "Please try again.",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.red,
                colorText: Colors.white,
              );
            }
          },
          child: Text(
            buttonTitle,
            style: const TextStyle(
              color: ColorConstant.color1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
        localizedReason: "Please scan your fingerprint to authenticate.",
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      return authenticated;
    } on PlatformException catch (e) {
      print("Error during authentication: $e");
      return false;
    }
  }
}
