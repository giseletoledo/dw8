import 'package:flutter/material.dart';

class ThemeConfig {
  // Avoid generate another intance
  ThemeConfig._();

  static final theme =
      ThemeData(appBarTheme: const AppBarTheme(backgroundColor: Colors.white));
}
