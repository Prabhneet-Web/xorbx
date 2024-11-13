import 'package:get/get.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ScalingUtility(), permanent: true);
  }
}
