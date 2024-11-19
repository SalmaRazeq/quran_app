import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  changeAppTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme; //dark
    notifyListeners();
  }

  bool isLightTheme() {
    return currentTheme == ThemeMode.light;
  }
}
