import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:xorbx/constants/color_constants.dart';

class HeatMap extends StatelessWidget {
  const HeatMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 4, 10, 12),
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
                height: 130, // Adjust the height of the map as needed
                child: FlutterMap(
                  options: const MapOptions(
                    backgroundColor: ColorConstant.color1,
                    initialCenter: LatLng(40.0, 48.0),
                    initialZoom: 1.5,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: const ['a', 'b', 'c'],
                      tileDisplay: TileDisplay.instantaneous(),
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
}
