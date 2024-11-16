import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/utils/app_bindings.dart';
import 'package:xorbx/routes/app_routes.dart';
import 'package:xorbx/constants/app_theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: AppRoutes.signInScreen,
      getPages: AppRoutes.pages,
      defaultTransition: Transition.fade,
      initialBinding: AppBinding(),
    );
  }
}
