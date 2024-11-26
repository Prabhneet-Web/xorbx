import 'package:get/get.dart';
import 'package:xorbx/presentation/sidebar_screen/device_health_monitoring_sidebar_screen/controller/device_health_monitoring_sidebar_controller.dart';

class DeviceHealthMonitoringSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeviceHealthMonitoringSidebarController>(
        () => DeviceHealthMonitoringSidebarController());
  }
}
