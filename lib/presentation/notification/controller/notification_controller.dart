import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NotificationController extends GetxController {
  var totalThreats = 45.obs;
  var resolvedThreats = 25.obs;
  var inactiveThreats = 45.obs;

  var threatAlerts = [
    {
      'type': 'Malware Attack',
      'description': 'A Malware Attack infiltrates and damages systems.',
      'color': Colors.red
    },
    {
      'type': 'Phishing Attack',
      'description': 'A Malware Attack infiltrates and damages systems.',
      'color': Colors.orange
    },
    {
      'type': 'Cyber Attack',
      'description': 'A Malware Attack infiltrates and damages systems.',
      'color': Colors.green
    },
  ].obs;

  var threatTrendData =
      [10, 30, 45, 70, 65, 80, 55, 60].obs; // Sample data for graph
  var threatTypeDistribution = 65.obs; // Percentage for threat type
  var deviceStatusDistribution = 85.obs; // Percentage for device status
}
