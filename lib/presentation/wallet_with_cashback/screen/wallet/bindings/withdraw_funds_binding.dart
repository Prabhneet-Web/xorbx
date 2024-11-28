import 'package:get/get.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/controllers/withdraw_funds_controller.dart';

class WithdrawFundsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawFundsController());
  }
}
