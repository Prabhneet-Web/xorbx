import 'package:get/get.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/customer_feedback/controller/customer_feedback_controller.dart';

class CustomerFeedbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerFeedbackController>(() => CustomerFeedbackController());
  }
}
