import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';

class AppPermissionCheckerScreen extends GetWidget {
  const AppPermissionCheckerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);

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
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.menu_outlined,
                          color: Color.fromRGBO(165, 212, 225, 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Text(
                            'Real-Time Threat Detection Sub-\nDashboard',
                            style: AppStyle.style2,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.refresh,
                                  size: 13,
                                  color: Colors.white60,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "Last Synced:",
                                  style: AppStyle.style2.copyWith(
                                      color: Colors.white60,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            const Text(
                              "September 01, 2024",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Summary Cards",
                    style: AppStyle.style1,
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 16),
                  Text(
                    "Real Time Threat Alerts",
                    style: AppStyle.style1,
                  ),
                  const SizedBox(height: 10),
                  _buildThreatAlerts(),
                  const SizedBox(height: 16),
                  _buildThreatTrendGraph(scale),
                  const SizedBox(height: 16),
                  _buildPieCharts(),
                  const SizedBox(height: 16),
                  _buildDeviceStatusOverview(),
                  const SizedBox(height: 16),
                  Text(
                    'Incident Log',
                    style: AppStyle.style1,
                  ),
                  const SizedBox(height: 10),
                  _buildIncidentLog(),
                  const SizedBox(height: 16),
                  _buildVulnerabilityHeatMap(),
                  const SizedBox(height: 16),
                  _buildUserActivityMonitoring(),
                  const SizedBox(height: 16),
                  Text(
                    'Network Traffic Analysis',
                    style: AppStyle.style1,
                  ),
                  const SizedBox(height: 10),
                  _buildNetworkTrafficAnalysis(),
                  const SizedBox(height: 16),
                  Text(
                    'Update Status',
                    style: AppStyle.style1,
                  ),
                  const SizedBox(height: 10),
                  _buildUpdateStatus(),
                  const SizedBox(height: 16),
                  Text(
                    'Compliance Status',
                    style: AppStyle.style1,
                  ),
                  const SizedBox(height: 10),
                  _buildComplianceStatus(),
                  const SizedBox(height: 36),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(String title, RxInt count, Color color) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Obx(() => Container(
            width: 102,
            height: 100,
            padding: const EdgeInsets.all(16),
            decoration: _cardDecoration(),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: AppStyle.style1.copyWith(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: color,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${count.value}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildThreatAlerts() {
    return _buildCardContainer(
      'Threats Alert',
      Container(
        decoration: _cardDecoration(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            children: [
              _threatAlertCards(
                'Malware Attack',
                Colors.red,
              ),
              const SizedBox(
                height: 12,
              ),
              _threatAlertCards(
                'Phishing Attack',
                Colors.orange,
              ),
              const SizedBox(
                height: 12,
              ),
              _threatAlertCards(
                'Cyber Attack',
                Colors.green,
              ),
            ],
          )
        ]),
      ),
    );
  }

  Widget _threatAlertCards(String name, Color color) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        decoration: _cardDecoration(),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              right: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.refresh,
                        size: 11,
                        color: Colors.white60,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Last Synced:",
                        style: AppStyle.style2.copyWith(
                            color: Colors.white60,
                            fontWeight: FontWeight.normal,
                            fontSize: 11),
                      ),
                    ],
                  ),
                  const Text(
                    "September 01, 2024",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 7,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: color,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        name,
                        style: AppStyle.style1.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'A Malware Attack infiltrates and damages systems',
                        style: AppStyle.style1.copyWith(
                          fontSize: 9,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThreatTrendGraph(scale) {
    return _buildCardContainer(
      'Threat Trend Graph',
      Container(
        decoration: _cardDecoration(),
        padding: const EdgeInsets.only(left: 10),
        child: SizedBox(
          height: 170,
          width: scale.fw,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(
                show: true,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: Colors.white.withOpacity(0.5),
                  strokeWidth: 1,
                ),
                // getDrawingVerticalLine: (value) => FlLine(
                //   color: Colors.white.withOpacity(0.3),
                //   strokeWidth: 1,
                // ),
              ),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 25,
                    interval: 20,
                    getTitlesWidget: (value, meta) {
                      return Text(
                        value.toInt().toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      );
                    },
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: (value, meta) {
                      const labels = [
                        'D1',
                        'D2',
                        'D3',
                        'D4',
                        'D5',
                        'D6',
                        'D7',
                        'W1',
                        'W2',
                        'W3',
                        'M'
                      ];
                      return Text(
                        labels[value.toInt() % labels.length],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      );
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: Colors.white.withOpacity(0.5)),
              ),
              lineBarsData: [
                LineChartBarData(
                  isCurved: false,
                  spots: [
                    const FlSpot(0, 10),
                    const FlSpot(1, 20),
                    const FlSpot(2, 40),
                    const FlSpot(3, 60),
                    const FlSpot(4, 70),
                    const FlSpot(5, 80),
                    const FlSpot(6, 60),
                    const FlSpot(7, 85),
                    const FlSpot(8, 90),
                    const FlSpot(9, 85),
                    const FlSpot(10, 70),
                  ],
                  dotData: const FlDotData(show: false),
                  color: Colors.red,
                  barWidth: 1,
                ),
              ],
              minY: 0,
              maxY: 100,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPieCharts() {
    return _buildCardContainer(
      'Pie Charts',
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildPieChartCard(
                'Threat Type Distribution',
                65, // Example percentage
                Colors.orange,
                Colors.green,
                Colors.grey,
              ),
              const SizedBox(
                width: 8,
              ),
              _buildPieChartCard(
                'Device Status Distribution',
                85, // Example percentage
                Colors.green,
                Colors.red,
                Colors.yellow,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPieChartCard(
      String title, int percentage, Color color1, Color color2, Color color3) {
    return Expanded(
      child: Container(
        height: 180, // Slightly increased height for layout consistency
        decoration: BoxDecoration(
          color: const Color.fromRGBO(13, 40, 62, 1), // Dark background color
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 80, // Set a fixed width
              height: 80, // Set a fixed height
              child: Stack(
                alignment:
                    Alignment.center, // Center the child widgets in the Stack
                children: [
                  PieChart(
                    PieChartData(
                      sections: _buildPieChartSections(
                          percentage, color1, color2, color3),
                      centerSpaceRadius: 30,
                      sectionsSpace: 2,
                      startDegreeOffset: 270,
                    ),
                  ),
                  Text(
                    "$percentage%",
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 38),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _buildPieChartSections(
      int percentage, Color color1, Color color2, Color color3) {
    return [
      PieChartSectionData(
        value: percentage.toDouble(),
        color: color1,
        radius: 20,
        showTitle: false,
      ),
      PieChartSectionData(
        value: (100 - percentage) *
            0.6, // Adjusts the visual weight of the remaining section
        color: color2,
        radius: 20,
        showTitle: false,
      ),
      PieChartSectionData(
        value: (100 - percentage) *
            0.4, // A minor section for another visual layer
        color: color3,
        radius: 20,
        showTitle: false,
      ),
    ];
  }

  Widget _buildDeviceStatusOverview() {
    return _buildCardContainer(
      'Device Status Overview',
      Column(
        children: [
          _deviceStatusCards('Secure', Colors.green),
          const SizedBox(height: 8),
          _deviceStatusCards('Vulnerabilities', Colors.red),
        ],
      ),
    );
  }

  Widget _deviceStatusCards(String name, Color color) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        decoration: _cardDecoration(),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: color,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: AppStyle.style1.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 15,
              right: 30,
              child: CustomPaint(
                painter: InnerShadowPainter(),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: _cardDecoration(),
                  child: const Center(
                    child: Icon(
                      Icons.verified_outlined,
                      size: 18,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIncidentLog() {
    return _buildCardContainer(
      'Recent Incidents Table',
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildIncidentTable(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _pagecard("<"),
              _pagecard("1"),
              _pagecard("2"),
              _pagecard("..."),
              _pagecard("9"),
              _pagecard(">"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _pagecard(String item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: CustomPaint(
        painter: InnerShadowPainter(),
        child: Container(
          height: 30,
          width: 30,
          decoration: _cardDecoration(),
          child: Center(
            child: Text(
              item,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIncidentTable() {
    return Column(
      children: [
        CustomPaint(
          painter: InnerShadowPainter(),
          child: Container(
            decoration: _cardDecoration(),
            child: Center(
              child: DataTable(
                border: const TableBorder(
                  verticalInside: BorderSide(color: Colors.white38),
                ),
                columnSpacing: 10,
                columns: const [
                  DataColumn(
                      label: Text('Timestamp',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataColumn(
                      label: Text('Severity',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataColumn(
                      label: Text('Type of Threat',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataColumn(
                      label: Text('Action Taken',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('2024-09-07',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('High',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('Malware',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('In Progress',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-09-07',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('High',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('Malware',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('In Progress',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-09-07',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('High',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('Malware',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('In Progress',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                  ]),
                  DataRow(
                    cells: [
                      DataCell(Text('2024-09-07',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                      DataCell(Text('High',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                      DataCell(Text('Malware',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                      DataCell(Text('In Progress',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildVulnerabilityHeatMap() {
    return Container(
      decoration: _cardDecoration(),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Vulnerability Heat Map',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 150, // Adjust the height of the map as needed
            child: FlutterMap(
              options: const MapOptions(
                initialCenter:
                    LatLng(40.0, 48.0), // Center at a general world view
                initialZoom:
                    1.5, // Adjust zoom level to show most of the world map
                // interactiveFlags: InteractiveFlag
                //     .none, // Disable interactions for static display
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
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

  Widget _buildUserActivityMonitoring() {
    return _buildCardContainer(
      'User Activity Monitoring',
      Stack(
        children: [
          // const Positioned(
          //   top: 0,
          //   right: 10,
          //   child: Icon(
          //     Icons.verified_outlined,
          //     size: 25,
          //     color: Colors.white54,
          //   ),
          // ),
          Column(
            children: [
              RangeSlider(
                values: const RangeValues(0.2, 0.8),
                onChanged: (RangeValues values) {},
                min: 0.0,
                max: 1.0,
                activeColor: const Color.fromRGBO(165, 212, 225, 1),
                inactiveColor: const Color.fromRGBO(165, 212, 225, 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'unauthorized access\n attempts',
                    style: AppStyle.style1.copyWith(
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                    ),
                  ),
                  Text(
                    'unusual\n behavior',
                    style: AppStyle.style1.copyWith(
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNetworkTrafficAnalysis() {
    return _buildCardContainer(
      'Network Traffic Overview Panel',
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 170,
            width: scale.fw,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: Colors.white.withOpacity(0.5),
                    strokeWidth: 1,
                  ),
                  // getDrawingVerticalLine: (value) => FlLine(
                  //   color: Colors.white.withOpacity(0.3),
                  //   strokeWidth: 1,
                  // ),
                ),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 25,
                      interval: 20,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          value.toInt().toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        );
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        const labels = [
                          'D1',
                          'D2',
                          'D3',
                          'D4',
                          'D5',
                          'D6',
                          'D7',
                          'W1',
                          'W2',
                          'W3',
                          'M'
                        ];
                        return Text(
                          labels[value.toInt() % labels.length],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: Colors.white.withOpacity(0.5)),
                ),
                lineBarsData: [
                  LineChartBarData(
                    isCurved: false,
                    spots: [
                      const FlSpot(0, 10),
                      const FlSpot(1, 20),
                      const FlSpot(2, 40),
                      const FlSpot(3, 60),
                      const FlSpot(4, 70),
                      const FlSpot(5, 80),
                      const FlSpot(6, 60),
                      const FlSpot(7, 85),
                      const FlSpot(8, 90),
                      const FlSpot(9, 85),
                      const FlSpot(10, 70),
                    ],
                    dotData: const FlDotData(show: false),
                    color: Colors.red,
                    barWidth: 1,
                  ),
                  LineChartBarData(
                    isCurved: false,
                    spots: [
                      const FlSpot(0, 20),
                      const FlSpot(1, 30),
                      const FlSpot(2, 45),
                      const FlSpot(3, 65),
                      const FlSpot(4, 50),
                      const FlSpot(5, 60),
                      const FlSpot(6, 90),
                      const FlSpot(7, 95),
                      const FlSpot(8, 80),
                      const FlSpot(9, 80),
                      const FlSpot(10, 90),
                    ],
                    dotData: const FlDotData(show: false),
                    color: Colors.green,
                    barWidth: 1,
                  ),
                ],
                minY: 0,
                maxY: 100,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Suspicious Connections List",
            style: AppStyle.style3,
          ),
          const SizedBox(
            height: 10,
          ),
          _networkTrafficCards(
            'Timestamps',
            Colors.red,
            _networkTrafficCardsDetails1(),
          ),
          const SizedBox(
            height: 12,
          ),
          _networkTrafficCards(
            'IP Addresses',
            Colors.green,
            _networkTrafficCardsDetails2(),
          ),
        ],
      ),
    );
  }

  Widget _networkTrafficCards(String name, Color color, Widget details) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        decoration: _cardDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: color,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppStyle.style1.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              details,
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _networkTrafficCardsDetails1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            const Icon(
              Icons.refresh,
              size: 11,
              color: Colors.white60,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              "Last Synced:",
              style: AppStyle.style2.copyWith(
                  color: Colors.white60,
                  fontWeight: FontWeight.normal,
                  fontSize: 11),
            ),
          ],
        ),
        const Text(
          "September 01, 2024",
          style: TextStyle(
            color: Colors.white60,
            fontSize: 7,
          ),
        ),
      ],
    );
  }

  Widget _networkTrafficCardsDetails2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "(HTTP)",
          style: AppStyle.style1.copyWith(
              color: Colors.white60,
              fontWeight: FontWeight.normal,
              fontSize: 13),
        ),
        const Text(
          "Protocols",
          style: TextStyle(
            color: Colors.white60,
            fontSize: 9,
          ),
        ),
      ],
    );
  }

  Widget _buildUpdateStatus() {
    return _buildCardContainer(
      'Device Status Overview',
      Column(
        children: [
          _updateStatusCards(
              'Software Updates', Colors.green, 'V 1.0', 'November 02, 2024'),
          const SizedBox(height: 8),
          _updateStatusCards(
              'Antivirus Updates', Colors.red, 'V 2.0', 'November 02, 2024'),
        ],
      ),
    );
  }

  Widget _updateStatusCards(
      String name, Color color, String version, String date) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        decoration: _cardDecoration(),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 20),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: color,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: AppStyle.style1.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                SizedBox(
                  width: scale.fw - 200,
                  height: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Latest version: ",
                        style: AppStyle.style1.copyWith(fontSize: 8),
                      ),
                      Text(
                        version,
                        style: AppStyle.style1.copyWith(fontSize: 8),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                SizedBox(
                  width: scale.fw - 140,
                  height: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Last updated timestamp: ",
                        style: AppStyle.style1.copyWith(fontSize: 8),
                      ),
                      Text(
                        date,
                        style: AppStyle.style1.copyWith(fontSize: 8),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildComplianceStatus() {
    return _buildCardContainer(
      'Compliance Overview',
      Column(
        children: [
          _buildComplianceSlider('GDPR', Colors.orange),
          _buildComplianceSlider('HIPAA', Colors.red),
        ],
      ),
    );
  }

  Widget _buildComplianceSlider(String label, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.circle,
          color: color,
          size: 11,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          label,
          style: AppStyle.style1.copyWith(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_left_outlined,
                size: 20,
                color: Colors.white54,
              ),
              CupertinoSlider(
                value: 0.7,
                onChanged: (value) {},
                activeColor: color,
                thumbColor: color,
              ),
              const Icon(
                Icons.arrow_right_outlined,
                size: 20,
                color: Colors.white54,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCardContainer(String title, Widget content) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: _cardDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyle.style3,
            ),
            const SizedBox(height: 10),
            content,
          ],
        ),
      ),
    );
  }

  Widget _buildStatusRow(String label, Color color,
      [String? version, String? date]) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Colors.white)),
        if (version != null)
          Text('Version: $version',
              style: const TextStyle(color: Colors.white)),
        if (date != null)
          Text('Updated: $date', style: const TextStyle(color: Colors.white)),
        Icon(Icons.circle, color: color, size: 14),
      ],
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: const Color.fromRGBO(13, 40, 62, 1),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
