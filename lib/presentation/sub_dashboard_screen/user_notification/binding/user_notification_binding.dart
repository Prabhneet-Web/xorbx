import 'package:get/get.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/user_notification/controller/user_notification_controller.dart';

class UserNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserNotificationController>(() => UserNotificationController());
  }
}
