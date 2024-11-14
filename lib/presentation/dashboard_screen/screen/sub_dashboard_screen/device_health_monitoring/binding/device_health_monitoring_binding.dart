import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/device_health_monitoring/controller/device_health_monitoring_controller.dart';

class DeviceHealthMonitoringBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeviceHealthMonitoringController>(
        () => DeviceHealthMonitoringController());
  }
}
