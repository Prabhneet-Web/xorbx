import 'package:get/get.dart';
import 'package:xorbx/presentation/sidebar_screen/referral_sidebar_screen/controller/referral_sidebar_controller.dart';

class ReferralSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReferralSidebarController>(() => ReferralSidebarController());
  }
}
