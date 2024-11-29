import 'package:get/get.dart';
import 'package:xorbx/presentation/device_management/controllers/device_management_controller.dart';

class DeviceManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeviceManagementController());
  }
}
