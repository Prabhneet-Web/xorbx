import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final currentIndex = 0.obs;
  final CarouselSliderController carouselController =
      CarouselSliderController();

  void nextSlide() {
    if (currentIndex.value < 6) {
      carouselController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      currentIndex.value++;
    } else {
      Get.offNamed('/sign_in_screen');
    }
  }

  final List<String> images = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/image5.png',
    'assets/images/image6.png',
    'assets/images/image7.png',
  ];
  final List<String> titles = [
    "Welcome to Your Security\nHub!",
    "Stay Ahead of Cyber\nThreats!",
    "Your Network, Your\nFortress!",
    "Don't Get Hooked by Phishing Attacks!",
    "Comprehensive Protection at Your Fingertips",
    "Your Security, Simplified!",
    "Ready to Secure Your Data?",
  ];
  final List<String> subtitle = [
    "Protecting Your Data, One Click at a Time.",
    "Real-Time Threat Detection keeps you secure 24/7.",
    "Instant Alerts for Network Security Issues.",
    "Our Detection System Protects Your Identity.",
    "Total Security for Your Digital Life.",
    "Easy Access to Essential Security Features.",
    "Tap to Begin Your Journey to Safety!"
  ];

  void skipToSignIn() {
    Get.offNamed('/sign_in_screen');
  }
}
