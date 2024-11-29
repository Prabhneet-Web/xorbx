import 'package:get/get.dart';

class MultiFactorAuthenticationController extends GetxController {
  var threatsDetected = 12.obs;
  var appPermissionScore = 60.obs;
  var networkAlertScore = 70.obs;

  void updateThreats(int value) {
    threatsDetected.value = value;
  }

  void updateAppPermissionScore(int value) {
    appPermissionScore.value = value;
  }

  void updateNetworkAlertScore(int value) {
    networkAlertScore.value = value;
  }
}