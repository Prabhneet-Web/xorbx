import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/dashboard_screen/controller/dashboard_controller.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/real_time_threat_detection/screen/real_time_threat_detection_screen.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';

class DashboardScreen extends GetWidget<DashboardController> {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.color1,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 230, // Width for the ellipse
              height: 230, // Height for the ellipse
              decoration: BoxDecoration(
                color: const Color.fromRGBO(150, 187, 210, 1)
                    .withOpacity(0.3), // Color of the ellipse
                borderRadius: BorderRadius.circular(50), // Ellipse shape
              ),
              child: Stack(
                children: [
                  // Apply blur effect
                  BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 25, sigmaY: 25), // Blur intensity
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors
                            .transparent, // Make sure the background is transparent
                        borderRadius: BorderRadius.circular(
                            50), // Match the ellipse shape
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: -150,
            child: Container(
              width: 230, // Width for the ellipse
              height: 230, // Height for the ellipse
              decoration: BoxDecoration(
                color: const Color.fromRGBO(150, 187, 210, 1)
                    .withOpacity(0.3), // Color of the ellipse
                borderRadius: BorderRadius.circular(50), // Ellipse shape
              ),
              child: Stack(
                children: [
                  // Apply blur effect
                  BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 50, sigmaY: 50), // Blur intensity
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors
                            .transparent, // Make sure the background is transparent
                        borderRadius: BorderRadius.circular(
                            50), // Match the ellipse shape
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.menu_outlined,
                          color: Color.fromRGBO(165, 212, 225, 1),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Cyber Security Dashboard',
                          style: AppStyle.style2,
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/person.png"),
                          radius: 16, // optional: adjust the size as needed
                        ),
                      ],
                    ),
                  ),
                  _buildThreatDetectionCard(),
                  const SizedBox(height: 600),
                  // _buildAppPermissionCheckerCard(),
                  // const SizedBox(height: 16),
                  // _buildNetworkSecurityAlertsCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildVulnerabilityHeatMap() {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.blueGrey[900],
  //       borderRadius: BorderRadius.circular(16),
  //       boxShadow: const [
  //         BoxShadow(
  //           color: Colors.black26,
  //           blurRadius: 8,
  //           offset: Offset(0, 4),
  //         ),
  //       ],
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         SizedBox(
  //           height: 300, // Adjust height to fit the heatmap
  //           child: CustomPaint(
  //             size: const Size(400, 400),
  //             painter: HexagonHeatmapPainter(),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildVulnerabilityHeatMap() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[900],
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150, // Adjust the height of the map as needed
                child: FlutterMap(
                  options: const MapOptions(
                    initialCenter: LatLng(40.0, 48.0),
                    initialZoom: 1.5,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: const ['a', 'b', 'c'],
                    ),
                    MarkerLayer(
                      markers: _buildVulnerabilityMarkers(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Positioned(
            left: 8,
            bottom: 8,
            child: Text(
              'Threats\nDetected: 12',
              style: TextStyle(
                color: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Marker> _buildVulnerabilityMarkers() {
    // Sample data: list of vulnerability locations with respective colors
    final locations = [
      {'lat': 40.7128, 'lon': -74.0060, 'color': Colors.red}, // New York
      {'lat': 34.0522, 'lon': -118.2437, 'color': Colors.green}, // Los Angeles
      {'lat': 51.5074, 'lon': -0.1278, 'color': Colors.red}, // London
      {'lat': 35.6895, 'lon': 139.6917, 'color': Colors.green}, // Tokyo
      {'lat': -33.8688, 'lon': 151.2093, 'color': Colors.red}, // Sydney
      {'lat': 28.6139, 'lon': 77.2090, 'color': Colors.green}, // New Delhi
      {'lat': 28.6139, 'lon': 77.2090, 'color': Colors.red},
      {'lat': 45.6139, 'lon': 78.2090, 'color': Colors.red},
      {'lat': 31.6139, 'lon': 81.2090, 'color': Colors.red},
      {'lat': 38.6139, 'lon': 83.2090, 'color': Colors.green},
      {'lat': 65.6139, 'lon': 77.2090, 'color': Colors.red},
      {'lat': 45.6139, 'lon': 78.2090, 'color': Colors.red},
      {'lat': 68.6139, 'lon': 81.2090, 'color': Colors.red},
      {'lat': 39.6139, 'lon': 34.2090, 'color': Colors.green},
      {'lat': 55.7558, 'lon': 37.6173, 'color': Colors.red}, // Moscow
    ];

    // Map the locations into Marker widgets
    return locations.map((location) {
      return Marker(
        width: 10,
        height: 10,
        point: LatLng(location['lat'] as double, location['lon'] as double),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: location['color'] as Color,
          ),
        ),
      );
    }).toList();
  }

  Widget _buildThreatDetectionCard() {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        decoration: _cardDecoration(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Real-Time Threat Detection',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: "Helvetica",
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: _buildVulnerabilityHeatMap(),
            ),
            const SizedBox(height: 10),
            // Obx(() => Text(
            //       'Threats Detected: ${controller.threatsDetected}',
            //       style: const TextStyle(color: Colors.white),
            //     )),
            const SizedBox(height: 10),
            Center(
              child: SizedBox(
                width: 250, // Set the width of the button here
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(165, 212, 225, 1),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => RealTimeThreatDetectionScreen());
                  },
                  child: const Text(
                    'View Detailed Report',
                    style: TextStyle(color: Color.fromRGBO(13, 40, 62, 1)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAppPermissionCheckerCard() {
    return Container(
      decoration: _cardDecoration(),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'App Permission Checker',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 10),
          Obx(() => Text(
                'Permission Score: ${controller.appPermissionScore}%',
                style: const TextStyle(color: Colors.white),
              )),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Review Permission'),
          ),
        ],
      ),
    );
  }

  Widget _buildNetworkSecurityAlertsCard() {
    return Container(
      decoration: _cardDecoration(),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Network Security Alerts',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 10),
          Obx(() => Text(
                'Alert Score: ${controller.networkAlertScore}%',
                style: const TextStyle(color: Colors.white),
              )),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('See All Alerts'),
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: const Color.fromRGBO(13, 40, 62, 1),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
