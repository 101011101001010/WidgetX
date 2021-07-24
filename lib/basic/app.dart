import 'package:flutter/material.dart';

class MaterialAppX extends StatelessWidget {
  static ThemeMode kThemeMode = ThemeMode.system;

  final ThemeData theme;
  final ThemeData darkTheme;
  final ThemeMode themeMode;
  final String title;
  final Widget home;

  MaterialAppX({
    required this.theme,
    required this.darkTheme,
    required this.themeMode,
    required this.title,
    required this.home,
  });

  @override
  Widget build(BuildContext context) {
    kThemeMode = themeMode;

    return MaterialApp(
      theme: theme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      title: title,
      home: home,
    );
  }
}
