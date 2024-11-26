import 'package:get/get.dart';
import 'package:xorbx/presentation/security_screen/capture_fingerprint/controller/capture_fingerprint_controller.dart';

class CaptureFingerprintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CaptureFingerprintController>(
        () => CaptureFingerprintController());
  }
}
