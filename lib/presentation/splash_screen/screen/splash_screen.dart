import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/presentation/splash_screen/controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  final List<String> images = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/image5.png',
    'assets/images/image6.png',
  ];

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: PageView.builder(
          onPageChanged: (index) {
            controller.currentIndex.value = index;
          },
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 100,
                  left: 20,
                  right: 20,
                  child: Column(
                    children: [
                      const Text(
                        "Welcome to Your Security Hub!",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Protecting Your Data, One Click at a Time.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: controller.skipToSignIn,
                              child: const Text(
                                "Skip",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: controller.nextSlide,
                              child: const Row(
                                children: [
                                  Text(
                                    "Next",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: List.generate(
                          images.length,
                          (index) => Container(
                            margin: const EdgeInsets.all(4),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: controller.currentIndex.value == index
                                  ? Colors.white
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
