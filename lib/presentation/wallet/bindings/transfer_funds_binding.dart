import 'package:get/get.dart';
import 'package:xorbx/presentation/wallet/controllers/transfer_funds_controller.dart';

class TransferFundsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferFundsController());
  }
}