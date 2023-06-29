import 'package:flutter/material.dart';
import 'package:todo/screens/app_screen.dart';

final kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(248, 4, 84, 223));
void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: kColorScheme.primary),
      ),
    ),
    home: const Scaffold(body: SafeArea(child: AppScreen())),
  ));
}
