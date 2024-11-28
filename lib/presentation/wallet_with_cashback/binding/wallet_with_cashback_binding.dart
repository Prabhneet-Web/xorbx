import 'package:get/get.dart';
import 'package:xorbx/presentation/wallet_with_cashback/controller/wallet_with_cashback_controller.dart';

class WalletWithCashbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletWithCashbackController());
  }
}
