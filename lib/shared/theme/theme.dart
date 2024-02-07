import 'package:dana_app_ui_clone/shared/theme/theme_constant.dart';
import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: primaryColor,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
