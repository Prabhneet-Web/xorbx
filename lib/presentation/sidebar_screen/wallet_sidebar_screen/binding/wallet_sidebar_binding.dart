import 'package:get/get.dart';
import 'package:xorbx/presentation/sidebar_screen/wallet_sidebar_screen/controller/wallet_sidebar_controller.dart';

class WalletSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WalletSidebarController>(() => WalletSidebarController());
  }
}
