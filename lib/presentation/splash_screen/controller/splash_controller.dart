import 'package:get/get.dart';

class SplashController extends GetxController {
  final currentIndex = 0.obs;

  void nextSlide() {
    if (currentIndex.value < 5) {
      currentIndex.value++;
    } else {
      Get.offNamed('/sign_in_screen');
    }
  }

  void skipToSignIn() {
    Get.offNamed('/sign_in_screen');
  }
}
