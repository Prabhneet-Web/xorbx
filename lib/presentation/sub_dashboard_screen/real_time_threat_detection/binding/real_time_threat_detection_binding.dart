import 'package:get/get.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';

class RealTimeThreatDetectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RealTimeThreadDetectionController>(
        () => RealTimeThreadDetectionController());
  }
}
