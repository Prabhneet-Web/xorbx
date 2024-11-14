import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/device_health_monitoring/screen/device_health_monitoring_sidebar_screen/controller/device_health_monitoring_sidebar_controller.dart';

class DeviceHealthMonitoringSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeviceHealthMonitoringSidebarController>(
        () => DeviceHealthMonitoringSidebarController());
  }
}
