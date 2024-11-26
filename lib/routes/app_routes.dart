import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/dashboard_screen.dart';
import 'package:xorbx/presentation/security_screen/capture_eye/binding/capture_eye_binding.dart';
import 'package:xorbx/presentation/security_screen/capture_eye/screen/capture_eye_screen.dart';
import 'package:xorbx/presentation/security_screen/capture_fingerprint/binding/capture_fingerprint_binding.dart';
import 'package:xorbx/presentation/security_screen/capture_fingerprint/screen/capture_fingerprint_screen.dart';
import 'package:xorbx/presentation/security_screen/capture_voice/binding/capture_voice_binding.dart';
import 'package:xorbx/presentation/security_screen/capture_voice/screen/capture_voice_screen.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/app_permission_checker/binding/app_permission_checker_binding.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/app_permission_checker/screen/app_permission_checker_screen.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/compromised_password/binding/compromised_password_binding.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/compromised_password/screen/compromised_password_screen.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/binding/device_health_monitoring_binding.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/device_health_monitoring/screen/device_health_monitoring_screen.dart';
import 'package:xorbx/presentation/sidebar_screen/device_health_monitoring_sidebar_screen/binding/device_health_monitoring_sidebar_binding.dart';
import 'package:xorbx/presentation/sidebar_screen/device_health_monitoring_sidebar_screen/screen/device_health_monitoring_sidebar_screen.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/network_security_alert/binding/network_security_alert_binding.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/network_security_alert/screen/network_security_alert_screen.dart';
import 'package:xorbx/presentation/sidebar_screen/phishing_detection_sidebar/binding/phishing_detection_sidebar_binding.dart';
import 'package:xorbx/presentation/sidebar_screen/phishing_detection_sidebar/screen/phishing_detection_sidebar_screen.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/user_notification/binding/user_notification_binding.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/user_notification/screen/user_notification_screen.dart';
import 'package:xorbx/presentation/sidebar_screen/dashboard_sidebar_screen/binding/dashboard_sidebar_binding.dart';
import 'package:xorbx/presentation/sidebar_screen/dashboard_sidebar_screen/screen/dashboard_sidebar_screen.dart';
import 'package:xorbx/presentation/sidebar_screen/user_notification_sidebar_screen/binding/user_notification_sidebar_binding.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/customer_feedback/binding/customer_feedback_binding.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/customer_feedback/screen/customer_feedback_screen.dart';
import 'package:xorbx/presentation/sidebar_screen/user_notification_sidebar_screen/screen/user_notification_sidebar_screen.dart';
import 'package:xorbx/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:xorbx/presentation/sign_in_screen/screen/sign_in_screen.dart';
import 'package:xorbx/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:xorbx/presentation/sign_up_screen/screen/sign_up_screen.dart';
import 'package:xorbx/presentation/splash_screen/binding/splash_binding.dart';
import 'package:xorbx/presentation/splash_screen/screen/splash_screen.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/binding/phishing_detection_binding.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/phising_detection/screen/phishing_detection_screen.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/real_time_threat_detection/binding/real_time_threat_detection_binding.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/real_time_threat_detection/screen/real_time_threat_detection_screen.dart';
import 'package:xorbx/presentation/verification_screen/binding/verification_binding.dart';
import 'package:xorbx/presentation/verification_screen/screen/verification_screen.dart';

class AppRoutes {
  // Flow 1
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

  // Flow 2
  static const captureEyeScreen = '/capture_eye';
  static const captureFingerprintScreen = '/capture_fingerprint';
  static const captureVoiceScreen = '/capture_voice';

  static List<GetPage> pages = [
    // Flow 1
    // main screens
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [SplashBinding()],
    ),
    GetPage(
      name: signInScreen,
      page: () => const SignInScreen(),
      bindings: [SignInBinding()],
    ),
    GetPage(
      name: signUpScreen,
      page: () => const SignUpScreen(),
      bindings: [SignUpBinding()],
    ),
    GetPage(
      name: verificationScreen,
      page: () => const VerificationScreen(),
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
      name: customerFeedback,
      page: () => const CustomerFeedbackScreen(),
      bindings: [CustomerFeedbackBinding()],
    ),
    // sidebar screens
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

    // Flow 2
    GetPage(
      name: captureEyeScreen,
      page: () => const CaptureEyeScreen(),
      bindings: [CaptureEyeBinding()],
    ),
    GetPage(
      name: captureFingerprintScreen,
      page: () => const CaptureFingerprintScreen(),
      bindings: [CaptureFingerprintBinding()],
    ),
    GetPage(
      name: captureVoiceScreen,
      page: () => const CaptureVoiceScreen(),
      bindings: [CaptureVoiceBinding()],
    ),
  ];
}
