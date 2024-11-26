import 'package:get/get.dart';
import 'package:xorbx/presentation/security_screen/capture_voice/controller/capture_voice_controller.dart';

class CaptureVoiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CaptureVoiceController>(() => CaptureVoiceController());
  }
}
