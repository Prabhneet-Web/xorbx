import 'package:get/get.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/network_security_alert/controller/network_security_alert_controller.dart';

class NetworkSecurityAlertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkSecurityAlertController>(
        () => NetworkSecurityAlertController());
  }
}
