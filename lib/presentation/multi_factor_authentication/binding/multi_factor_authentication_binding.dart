import 'package:get/get.dart';
import 'package:xorbx/presentation/multi_factor_authentication/controller/multi_factor_authentication_controller.dart';

class MultiFactorAuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MultiFactorAuthenticationController>(
        () => MultiFactorAuthenticationController());
  }
}
