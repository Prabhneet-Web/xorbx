import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationController extends GetxController {
  var notifications = <Map<String, String>>[].obs;
  var lastSynced = "November 07, 2024".obs;

  final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void onInit() {
    super.onInit();
    _initializeNotifications();
    fetchNotifications();
  }

  Future<void> _initializeNotifications() async {
    const AndroidInitializationSettings androidInitSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initSettings =
        InitializationSettings(android: androidInitSettings);

    await _localNotificationsPlugin.initialize(initSettings);
  }

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

  void refreshNotifications() async {
    final now = DateTime.now();
    final monthName = DateFormat('MMMM').format(now);

    lastSynced.value = "$monthName ${now.day}, ${now.year}";

    await fetchNotifications();
  }

  Future<void> scheduleTestNotification() async {
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails('channel_id', 'channel_name',
            importance: Importance.max, priority: Priority.high);

    const NotificationDetails platformDetails =
        NotificationDetails(android: androidDetails);

    await _localNotificationsPlugin.show(
      0,
      'Test Notification Title',
      'This is a test notification content',
      platformDetails,
    );
  }
}
