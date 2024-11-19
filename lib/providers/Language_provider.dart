import 'package:flutter/material.dart';

// Observable
class LanguageProvider extends ChangeNotifier {
  //data or state
  String currentLanguage = 'en';

  void changeAppLanguage(String newLang) {
    if (currentLanguage == newLang) return;
    currentLanguage = newLang; //dark
    notifyListeners();
  }
}
