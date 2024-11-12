import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_bindings.dart';
import 'package:xorbx/constants/app_routes.dart';
import 'package:xorbx/constants/app_theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: AppRoutes.dashboardScreen,
      getPages: AppRoutes.pages,
      defaultTransition: Transition.fade,
      initialBinding: AppBinding(),
    );
  }
}
