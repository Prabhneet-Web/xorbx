import 'package:get/get.dart';
import 'package:xorbx/presentation/sidebar_screen/controller/sidebar_controller.dart';

class SidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SidebarController>(() => SidebarController());
  }
}
