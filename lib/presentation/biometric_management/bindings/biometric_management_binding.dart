import 'package:get/get.dart';
import 'package:xorbx/presentation/biometric_management/controllers/biometric_management_controller.dart';

class BiometricManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BiometricManagementController>(
        () => BiometricManagementController());
  }
}
