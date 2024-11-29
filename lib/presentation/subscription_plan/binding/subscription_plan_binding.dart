import 'package:get/get.dart';
import 'package:xorbx/presentation/subscription_plan/controller/subscription_plan_controller.dart';

class SubscriptionPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubscriptionPlanController>(() => SubscriptionPlanController());
  }
}
