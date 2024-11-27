import 'package:get/get.dart';
import 'package:xorbx/presentation/sidebar_screen_details/dashboard_sidebar_details/overview_screen/controller/overview_controller.dart';

class OverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OverviewController>(() => OverviewController());
  }
}
