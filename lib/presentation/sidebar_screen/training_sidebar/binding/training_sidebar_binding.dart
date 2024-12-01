import 'package:get/get.dart';
import 'package:xorbx/presentation/sidebar_screen/training_sidebar/controller/training_sidebar_controller.dart';

class TrainingSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrainingSidebarController>(() => TrainingSidebarController());
  }
}
