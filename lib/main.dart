import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:xorbx/firebase_options.dart';
import 'package:xorbx/utils/app_bindings.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/constants/app_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  String initialRoute = FirebaseAuth.instance.currentUser != null
      ? AppRoutes.multiFactorAuthenticationScreen
      : AppRoutes.splashScreen;

  runApp(App(initialRoute: initialRoute));
}

class App extends StatelessWidget {
  final String initialRoute;

  const App({required this.initialRoute, super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: initialRoute,
      getPages: AppRoutes.pages,
      defaultTransition: Transition.fade,
      initialBinding: AppBinding(),
    );
  }
}
