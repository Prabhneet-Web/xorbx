import 'package:get/get.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/compromised_password/controller/compromised_password_controller.dart';

class CompromisedPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompromisedPasswordController>(
        () => CompromisedPasswordController());
  }
}
