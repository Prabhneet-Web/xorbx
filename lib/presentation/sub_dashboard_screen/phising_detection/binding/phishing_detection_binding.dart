import 'package:get/get.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/controller/phishing_detection_controller.dart';

class PhishingDetectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhishingDetectionController>(
        () => PhishingDetectionController());
  }
}