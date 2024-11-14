import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/dashboard_sidebar_screen/controller/dashboard_sidebar_controller.dart';

class DashboardSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardSidebarController>(() => DashboardSidebarController());
  }
}
