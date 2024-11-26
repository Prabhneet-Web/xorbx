import 'package:get/get.dart';
import 'package:xorbx/presentation/sidebar_screen/user_notification_sidebar_screen/controller/user_notification_sidebar_controller.dart';

class UserNotificationSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserNotificationSidebarController>(
        () => UserNotificationSidebarController());
  }
}
