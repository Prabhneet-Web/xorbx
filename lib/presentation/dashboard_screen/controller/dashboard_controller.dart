import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DashboardController extends GetxController {
  // State variables for the dashboard
  var threatsDetected = 12.obs;
  var appPermissionScore = 60.obs;
  var networkAlertScore = 70.obs;

  void updateThreats(int value) {
    threatsDetected.value = value;
  }

  void updateAppPermissionScore(int value) {
    appPermissionScore.value = value;
  }

  void updateNetworkAlertScore(int value) {
    networkAlertScore.value = value;
  }

  var notifications = <Map<String, String>>[].obs;
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> fetchNotifications() async {
    final List<PendingNotificationRequest> pendingNotifications =
        await _localNotificationsPlugin.pendingNotificationRequests();

    notifications.value = pendingNotifications
        .map((notification) => {
              'title': notification.title ?? 'No title',
              'timestamp': _formatTimestamp(notification.id),
            })
        .toList();
  }

  String _formatTimestamp(int id) {
    final now = DateTime.now();
    final monthName = DateFormat('MMMM').format(now);
    return "$monthName ${now.day}, ${now.year}";
  }
}
