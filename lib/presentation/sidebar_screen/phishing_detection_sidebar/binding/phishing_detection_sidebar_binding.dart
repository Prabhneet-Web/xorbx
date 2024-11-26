import 'package:get/get.dart';
import 'package:xorbx/presentation/sidebar_screen/phishing_detection_sidebar/controller/phishing_detection_sidebar_controller.dart';

class PhishingDetectionSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhishingDetectionSidebarController>(
        () => PhishingDetectionSidebarController());
  }
}
