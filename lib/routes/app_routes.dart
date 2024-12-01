import 'package:get/get.dart';
import 'package:xorbx/presentation/biometric_management/bindings/biometric_management_binding.dart';
import 'package:xorbx/presentation/biometric_management/screens/biometric_management_screen.dart';
import 'package:xorbx/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/dashboard_screen.dart';
import 'package:xorbx/presentation/data_usage_screen/binding/data_usage_binding.dart';
import 'package:xorbx/presentation/data_usage_screen/screen/data_usage_screen.dart';
import 'package:xorbx/presentation/device_management/bindings/device_management_binding.dart';
import 'package:xorbx/presentation/device_management/screens/device_management_screen.dart';
import 'package:xorbx/presentation/multi_factor_authentication/binding/multi_factor_authentication_binding.dart';
import 'package:xorbx/presentation/multi_factor_authentication/screen/multi_factor_authentication_screen.dart';
import 'package:xorbx/presentation/password_management/binding/password_management_binding.dart';
import 'package:xorbx/presentation/password_management/screen/password_management_screen.dart';
import 'package:xorbx/presentation/referral_screen/binding/referral_binding.dart';
import 'package:xorbx/presentation/referral_screen/screen/referral_screen.dart';
import 'package:xorbx/presentation/security_screen/capture_eye/binding/capture_eye_binding.dart';
import 'package:xorbx/presentation/security_screen/capture_eye/screen/capture_eye_screen.dart';
import 'package:xorbx/presentation/security_screen/capture_fingerprint/binding/capture_fingerprint_binding.dart';
import 'package:xorbx/presentation/security_screen/capture_fingerprint/screen/capture_fingerprint_screen.dart';
import 'package:xorbx/presentation/security_screen/capture_voice/binding/capture_voice_binding.dart';
import 'package:xorbx/presentation/security_screen/capture_voice/screen/capture_voice_screen.dart';
import 'package:xorbx/presentation/sidebar_screen/referral_sidebar_screen/binding/referral_sidebar_binding.dart';
import 'package:xorbx/presentation/sidebar_screen/referral_sidebar_screen/screen/referral_sidebar_screen.dart';
import 'package:xorbx/presentation/sidebar_screen/training_sidebar/binding/training_sidebar_binding.dart';
import 'package:xorbx/presentation/sidebar_screen/training_sidebar/screen/training_sidebar_screen.dart';
import 'package:xorbx/presentation/sidebar_screen/wallet_sidebar_screen/binding/wallet_sidebar_binding.dart';
import 'package:xorbx/presentation/sidebar_screen/wallet_sidebar_screen/screen/wallet_sidebar_screen.dart';
import 'package:xorbx/presentation/sidebar_screen_details/dashboard_sidebar_details/overview_screen/binding/overview_binding.dart';
import 'package:xorbx/presentation/sidebar_screen_details/dashboard_sidebar_details/overview_screen/screen/overview_screen.dart';
import 'package:xorbx/presentation/sidebar_screen_details/dashboard_sidebar_details/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:xorbx/presentation/sidebar_screen_details/dashboard_sidebar_details/privacy_policy_screen/screen/privacy_policy_screen.dart';
import 'package:xorbx/presentation/sidebar_screen_details/dashboard_sidebar_details/terms_and_conditions/binding/terms_and_conditions_binding.dart';
import 'package:xorbx/presentation/sidebar_screen_details/dashboard_sidebar_details/terms_and_conditions/screen/terms_and_conditions_screen.dart';
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
import 'package:xorbx/presentation/subscription_plan/binding/subscription_plan_binding.dart';
import 'package:xorbx/presentation/subscription_plan/screen/subscription_plan_screen.dart';
import 'package:xorbx/presentation/training/binding/training_binding.dart';
import 'package:xorbx/presentation/training/screen/training_screen.dart';
import 'package:xorbx/presentation/verification_screen/binding/verification_binding.dart';
import 'package:xorbx/presentation/verification_screen/screen/verification_screen.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/bindings/add_funds_binding.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/bindings/add_payment_methods_binding.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/bindings/payment_methods_binding.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/bindings/transaction_history_binding.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/bindings/transfer_funds_binding.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/bindings/withdraw_funds_binding.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/screens/add_funds_screen.dart';
import 'package:xorbx/presentation/wallet_with_cashback/binding/wallet_with_cashback_binding.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/screens/add_payment_methods_screen.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/screens/payment_methods_screen.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/screens/transaction_history_screen.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet_with_cashback_screen.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/screens/transfer_funds_screen.dart';
import 'package:xorbx/presentation/wallet_with_cashback/screen/wallet/screens/withdraw_funds_screen.dart';

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
  static const overviewScreen = '/dashboard_sidebar_details';
  static const privacyPolicyScreen = '/privacy_policy_screen';
  static const termsAndConditionsScreen = '/terms_and_conditions';
  static const walletWithCashbackScreen = '/wallet_with_cashback';
  static const walletSidebarScreen = '/wallet_sidebar_screen';
  static const trainingSidebarScreen = '/training_sidebar';
  static const addFunds = '/add_funds';
  static const withdrawFunds = '/withdraw_funds';
  static const transferFunds = '/transfer_funds';
  static const transactionHistory = '/transaction_history';
  static const dataUsageScreen = '/data_usage_screen';
  static const referralSidebarScreen = '/referral_sidebar_screen';
  static const referralScreen = '/referral_screen';
  static const paymentMethods = '/payment_methods';
  static const addPaymentMethods = '/add_payment_methods';
  static const passwordManagement = '/password_management';
  static const subscriptionPlan = '/subscription_plan';
  static const multiFactorAuthenticationScreen = '/multi_factor_authentication';
  static const deviceManagement = '/device_management';
  static const biometricManagementScreen = '/biometric_management';
  static const training = '/training';

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
      name: phishingDetectionSidebarScreen,
      page: () => const PhishingDetectionSidebarScreen(),
      bindings: [PhishingDetectionSidebarBinding()],
    ),
    GetPage(
      name: userNotificationSidebarScreen,
      page: () => const UserNotificationSidebarScreen(),
      bindings: [UserNotificationSidebarBinding()],
    ),

    // Flow 2
    // security screens
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
    GetPage(
      name: multiFactorAuthenticationScreen,
      page: () => const MultiFactorAuthenticationScreen(),
      bindings: [MultiFactorAuthenticationBinding()],
    ),
    // sidebar screens
    GetPage(
      name: walletSidebarScreen,
      page: () => const WalletSidebarScreen(),
      bindings: [WalletSidebarBinding()],
    ),
    GetPage(
      name: referralSidebarScreen,
      page: () => const ReferralSidebarScreen(),
      bindings: [ReferralSidebarBinding()],
    ),
    GetPage(
      name: trainingSidebarScreen,
      page: () => const TrainingSidebarScreen(),
      bindings: [TrainingSidebarBinding()],
    ),
    // sidebar details screens
    GetPage(
      name: overviewScreen,
      page: () => const OverviewScreen(),
      bindings: [OverviewBinding()],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => const PrivacyPolicyScreen(),
      bindings: [PrivacyPolicyBinding()],
    ),
    GetPage(
      name: termsAndConditionsScreen,
      page: () => const TermsAndConditionsScreen(),
      bindings: [TermsAndConditionsBinding()],
    ),
    GetPage(
      name: dataUsageScreen,
      page: () => const DataUsageScreen(),
      bindings: [DataUsageBinding()],
    ),
    GetPage(
      name: referralScreen,
      page: () => const ReferralScreen(),
      bindings: [ReferralBinding()],
    ),
    GetPage(
      name: passwordManagement,
      page: () => const PasswordManagementScreen(),
      bindings: [PasswordManagementBinding()],
    ),
    GetPage(
      name: biometricManagementScreen,
      page: () => const BiometricManagementScreen(),
      bindings: [BiometricManagementBinding()],
    ),
    GetPage(
      name: subscriptionPlan,
      page: () => const SubscriptionPlanScreen(),
      bindings: [SubscriptionPlanBinding()],
    ),
    GetPage(
      name: deviceManagement,
      page: () => const DeviceManagementScreen(),
      bindings: [DeviceManagementBinding()],
    ),
    // wallet
    GetPage(
      name: walletWithCashbackScreen,
      page: () => const WalletWithCashbackScreen(),
      bindings: [WalletWithCashbackBinding()],
    ),
    GetPage(
      name: addFunds,
      page: () => const AddFundsScreen(),
      bindings: [AddFundsBinding()],
    ),
    GetPage(
      name: withdrawFunds,
      page: () => const WithdrawFundsScreen(),
      bindings: [WithdrawFundsBindings()],
    ),
    GetPage(
      name: transferFunds,
      page: () => const TransferFundsScreen(),
      bindings: [TransferFundsBinding()],
    ),
    GetPage(
      name: paymentMethods,
      page: () => const PaymentMethodsScreen(),
      bindings: [PaymentMethodsBinding()],
    ),
    GetPage(
      name: addPaymentMethods,
      page: () => const AddPaymentMethodsScreen(),
      bindings: [AddPaymentMethodsBinding()],
    ),
    GetPage(
      name: transactionHistory,
      page: () => const TransactionHistoryScreen(),
      bindings: [TransactionHistoryBinding()],
    ),
    GetPage(
      name: training,
      page: () => const TrainingScreen(),
      bindings: [TrainingBinding()],
    ),
  ];
}
