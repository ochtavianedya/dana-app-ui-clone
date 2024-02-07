import 'package:dana_app_ui_clone/core.dart';
import 'package:dana_app_ui_clone/shared/theme/theme.dart';
import 'package:dana_app_ui_clone/state_util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: getDefaultTheme(),
      home: const MainNavigationView(),
    );
  }
}
