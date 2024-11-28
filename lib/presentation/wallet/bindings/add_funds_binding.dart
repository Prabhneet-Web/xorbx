import 'package:get/get.dart';
import 'package:xorbx/presentation/wallet/controllers/add_funds_controller.dart';

class AddFundsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddFundsController());
  }

}