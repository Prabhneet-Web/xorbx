import 'package:get/get.dart';
import 'package:xorbx/presentation/password_management/controller/password_management_controller.dart';

class PasswordManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordManagementController>(
        () => PasswordManagementController());
  }
}
