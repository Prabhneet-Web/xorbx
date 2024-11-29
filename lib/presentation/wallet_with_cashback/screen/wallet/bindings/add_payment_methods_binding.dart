import 'package:get/get.dart';
import 'package:xorbx/presentation/wallet/controllers/add_payment_methods_controller.dart';

class AddPaymentMethodsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AddPaymentMethodsController());
  }

}