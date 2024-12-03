import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:xorbx/presentation/splash_screen/controller/splash_controller.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/common_network_image.dart';

class SplashScreen extends GetWidget<SplashController> {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            height: scale.fh,
            width: scale.fw,
            child: CarouselSlider.builder(
              carouselController: controller.carouselController,
              itemCount: controller.images.length,
              options: CarouselOptions(
                height: scale.fh,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                autoPlay: false,
                onPageChanged: (index, reason) {
                  controller.currentIndex.value = index;
                },
              ),
              itemBuilder: (context, index, realIndex) {
                return Stack(
                  children: [
                    Positioned.fill(
                      child: CommonNetworkImageView(
                        url: controller.images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Black overlay
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.6),
                              Colors.transparent,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() => Text(
                      controller.titles[controller.currentIndex.value],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(height: 8),
                Obx(() => Text(
                      controller.subtitle[controller.currentIndex.value],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.start,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: controller.nextSlide,
                      child: const Row(
                        children: [
                          Text(
                            "Enter",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.images.length,
                    (index) => Obx(() => Container(
                          margin: const EdgeInsets.all(4),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: controller.currentIndex.value == index
                                ? Colors.white
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
