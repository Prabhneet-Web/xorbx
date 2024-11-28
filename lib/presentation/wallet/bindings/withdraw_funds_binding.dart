import 'package:get/get.dart';
import 'package:xorbx/presentation/wallet/controllers/withdraw_funds_controller.dart';

class WithdrawFundsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawFundsController());
  }

}