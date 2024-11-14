import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/controller/app_permission_checker_controller.dart';

class AppPermissionCheckerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppPermissionCheckerController>(
        () => AppPermissionCheckerController());
  }
}
