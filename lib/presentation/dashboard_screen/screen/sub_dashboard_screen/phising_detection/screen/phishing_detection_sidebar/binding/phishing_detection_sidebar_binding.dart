import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/phising_detection/screen/phishing_detection_sidebar/controller/phishing_detection_sidebar_controller.dart';

class PhishingDetectionSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhishingDetectionSidebarController>(
        () => PhishingDetectionSidebarController());
  }
}
