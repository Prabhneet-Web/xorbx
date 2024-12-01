import 'package:get/get.dart';
import 'package:xorbx/presentation/training/controller/training_controller.dart';

class TrainingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainingController());
  }
}
