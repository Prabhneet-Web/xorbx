import 'package:get/get.dart';
import 'package:xorbx/presentation/security_screen/capture_eye/controller/capture_eye_controller.dart';

class CaptureEyeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CaptureEyeController>(() => CaptureEyeController());
  }
}
