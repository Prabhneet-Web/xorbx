import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/dashboard_screen.dart';
import 'package:xorbx/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:xorbx/presentation/sign_in_screen/screen/sign_in_screen.dart';
import 'package:xorbx/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:xorbx/presentation/sign_up_screen/screen/sign_up_screen.dart';
import 'package:xorbx/presentation/splash_screen/binding/splash_binding.dart';
import 'package:xorbx/presentation/splash_screen/screen/splash_screen.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/real_time_threat_detection/binding/real_time_threat_detection_binding.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/real_time_threat_detection/screen/real_time_threat_detection_screen.dart';
import 'package:xorbx/presentation/verification_screen/binding/verification_binding.dart';
import 'package:xorbx/presentation/verification_screen/screen/verification_screen.dart';

class AppRoutes {
  static const splashScreen = '/splash_screen';
  static const signInScreen = '/sign_in_screen';
  static const signUpScreen = '/sign_up_screen';
  static const verificationScreen = '/verification_screen';
  static const dashboardScreen = '/dashboard_screen';
  static const subDashboardScreen = '/sub_dashboard_screen';

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
      name: subDashboardScreen,
      page: () => RealTimeThreatDetectionScreen(),
      bindings: [RealTimeThreatDetectionBinding()],
    ),
  ];
}
