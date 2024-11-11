import 'package:get/get.dart';
import 'package:xorbx/presentation/verification_screen/controller/verification_controller.dart';

class VerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationController>(() => VerificationController());
  }
}
