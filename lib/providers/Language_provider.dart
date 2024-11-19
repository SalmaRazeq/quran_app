import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Observable
class LanguageProvider extends ChangeNotifier {
  //data or state
  String currentLanguage = 'en';

  void changeAppLanguage(String newLang) {
    if (currentLanguage == newLang) return;
    currentLanguage = newLang;
    saveLang(newLang); //dark
    notifyListeners();
  }

  void saveLang(String lang) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (lang == 'en') {
      prefs.setString('lang', 'en');
    } else {
      prefs.setString('lang', 'ar');
    }
  }

  void getLang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String lang = prefs.getString('lang') ?? 'en';

    if (lang == 'en') {
      currentLanguage = 'en';
    } else {
      currentLanguage = 'ar';
    }
    notifyListeners();
  }
}
