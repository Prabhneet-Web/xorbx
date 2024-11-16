import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/user_notification_dashboard_screen/controller/user_notification_dashboard_controller.dart';

class UserNotificationDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserNotificationDashboardController>(
        () => UserNotificationDashboardController());
  }
}
