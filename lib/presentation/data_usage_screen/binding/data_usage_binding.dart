import 'package:get/get.dart';
import 'package:xorbx/presentation/data_usage_screen/controller/data_usage_controller.dart';

class DataUsageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataUsageController>(() => DataUsageController());
  }
}
