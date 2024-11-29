import 'package:get/get.dart';
import 'package:xorbx/presentation/wallet/controllers/payment_methods_controller.dart';

class PaymentMethodsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentMethodsController());
  }
  
}