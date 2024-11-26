import 'package:get/get.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/app_permission_checker/controller/app_permission_checker_controller.dart';

class AppPermissionCheckerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppPermissionCheckerController>(
        () => AppPermissionCheckerController());
  }
}
