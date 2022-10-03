import 'package:flutter/material.dart';

class ClassicTheme {
  static ThemeData get light => _theme(const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blueAccent,
      onPrimary: Colors.white,
      secondary: Colors.blueAccent,
      onSecondary: Colors.white,
      error: Colors.redAccent,
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Color(0xFFF0F0F0),
      onSurface: Colors.black));

  static ThemeData get dark => _theme(const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.blueAccent,
      onPrimary: Colors.black,
      secondary: Colors.blueAccent,
      onSecondary: Colors.black,
      error: Colors.redAccent,
      onError: Colors.black,
      background: Colors.black,
      onBackground: Colors.white70,
      surface: Color(0xFF0F0F0F),
      onSurface: Colors.white70));

  static ThemeData _theme(ColorScheme colorScheme) => ThemeData(
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
      appBarTheme: AppBarTheme(elevation: 0, backgroundColor: colorScheme.background, foregroundColor: colorScheme.onBackground, centerTitle: true),
      listTileTheme: ListTileThemeData(
          tileColor: colorScheme.surface,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0)),
      navigationBarTheme:
          NavigationBarThemeData(backgroundColor: colorScheme.surface, elevation: 5, labelBehavior: NavigationDestinationLabelBehavior.alwaysHide));
}
