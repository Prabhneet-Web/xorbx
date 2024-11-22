import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/dashboard_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/binding/app_permission_checker_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/app_permission_checker/screen/app_permission_checker_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/binding/compromised_password_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/compromised_password/screen/compromised_password_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/device_health_monitoring/binding/device_health_monitoring_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/device_health_monitoring/screen/device_health_monitoring_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/device_health_monitoring/screen/device_health_monitoring_sidebar_screen/binding/device_health_monitoring_sidebar_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/device_health_monitoring/screen/device_health_monitoring_sidebar_screen/screen/device_health_monitoring_sidebar_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/network_security_alert/binding/network_security_alert_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/network_security_alert/screen/network_security_alert_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/phising_detection/screen/phishing_detection_sidebar/binding/phishing_detection_sidebar_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/phising_detection/screen/phishing_detection_sidebar/screen/phishing_detection_sidebar_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/binding/user_notification_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/screen/user_notification_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/dashboard_sidebar_screen/binding/dashboard_sidebar_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/dashboard_sidebar_screen/screen/dashboard_sidebar_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/screen/user_notification_sidebar_screen/binding/user_notification_sidebar_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/customer_feedback/binding/customer_feedback_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/customer_feedback/screen/customer_feedback_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/user_notification/screen/user_notification_sidebar_screen/screen/user_notification_sidebar_screen.dart';
import 'package:xorbx/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:xorbx/presentation/sign_in_screen/screen/sign_in_screen.dart';
import 'package:xorbx/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:xorbx/presentation/sign_up_screen/screen/sign_up_screen.dart';
import 'package:xorbx/presentation/splash_screen/binding/splash_binding.dart';
import 'package:xorbx/presentation/splash_screen/screen/splash_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/phising_detection/binding/phishing_detection_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/phising_detection/screen/phishing_detection_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/binding/real_time_threat_detection_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/screen/real_time_threat_detection_screen.dart';
import 'package:xorbx/presentation/verification_screen/binding/verification_binding.dart';
import 'package:xorbx/presentation/verification_screen/screen/verification_screen.dart';

class AppRoutes {
  static const splashScreen = '/splash_screen';
  static const signInScreen = '/sign_in_screen';
  static const signUpScreen = '/sign_up_screen';
  static const verificationScreen = '/verification_screen';
  static const dashboardScreen = '/dashboard_screen';
  static const realTimeThreadDetectionScreen = '/real_time_threat_detection';
  static const appPermissionChecker = '/app_permission_checker';
  static const phisingDetectionScreen = '/phishing_detection';
  static const compromisedPassword = '/compromised_password';
  static const deviceHealthMonitoring = '/device_health_monitoring';
  static const networkSecurityAlert = '/network_security_alert';
  static const userNotification = '/user_notification';
  static const customerFeedback = '/customer_feedback';
  static const dashboardSidebarScreen = '/dashboard_sidebar_screen';
  static const deviceHealthMonitoringSidebarScreen =
      '/device_health_monitoring_sidebar_screen';
  static const userNotificationSidebarScreen =
      '/user_notification_sidebar_screen';
  static const phishingDetectionSidebarScreen =
      '/user_notification_sidebar_screen';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      bindings: [SplashBinding()],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [SignInBinding()],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [SignUpBinding()],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [VerificationBinding()],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => const DashboardScreen(),
      bindings: [DashboardBinding()],
    ),
    GetPage(
      name: realTimeThreadDetectionScreen,
      page: () => const RealTimeThreatDetectionScreen(),
      bindings: [RealTimeThreatDetectionBinding()],
    ),
    GetPage(
      name: phisingDetectionScreen,
      page: () => const PhishingDetectionScreen(),
      bindings: [PhishingDetectionBinding()],
    ),
    GetPage(
      name: phishingDetectionSidebarScreen,
      page: () => const PhishingDetectionSidebarScreen(),
      bindings: [PhishingDetectionSidebarBinding()],
    ),
    GetPage(
      name: appPermissionChecker,
      page: () => const AppPermissionCheckerScreen(),
      bindings: [AppPermissionCheckerBinding()],
    ),
    GetPage(
      name: compromisedPassword,
      page: () => const CompromisedPasswordScreen(),
      bindings: [CompromisedPasswordBinding()],
    ),
    GetPage(
      name: deviceHealthMonitoring,
      page: () => const DeviceHealthMonitoringScreen(),
      bindings: [DeviceHealthMonitoringBinding()],
    ),
    GetPage(
      name: networkSecurityAlert,
      page: () => const NetworkSecurityAlertScreen(),
      bindings: [NetworkSecurityAlertBinding()],
    ),
    GetPage(
      name: userNotification,
      page: () => const UserNotificationScreen(),
      bindings: [UserNotificationBinding()],
    ),
    GetPage(
      name: dashboardSidebarScreen,
      page: () => const DashboardSidebarScreen(),
      bindings: [DashboardSidebarBinding()],
    ),
    GetPage(
      name: deviceHealthMonitoringSidebarScreen,
      page: () => const DeviceHealthMonitoringSidebarScreen(),
      bindings: [DeviceHealthMonitoringSidebarBinding()],
    ),
    GetPage(
      name: userNotificationSidebarScreen,
      page: () => const UserNotificationSidebarScreen(),
      bindings: [UserNotificationSidebarBinding()],
    ),
    GetPage(
      name: customerFeedback,
      page: () => const CustomerFeedbackScreen(),
      bindings: [CustomerFeedbackBinding()],
    ),
  ];
}
