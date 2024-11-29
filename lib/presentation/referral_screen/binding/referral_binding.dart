import 'package:get/get.dart';
import 'package:xorbx/presentation/referral_screen/controller/referral_controller.dart';

class ReferralBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReferralController());
  }
}
