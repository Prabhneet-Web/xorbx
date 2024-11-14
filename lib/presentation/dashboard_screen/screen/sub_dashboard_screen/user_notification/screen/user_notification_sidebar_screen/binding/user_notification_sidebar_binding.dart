import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/screen/user_notification_sidebar_screen/controller/user_notification_sidebar_controller.dart';

class UserNotificationSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserNotificationSidebarController>(
        () => UserNotificationSidebarController());
  }
}
