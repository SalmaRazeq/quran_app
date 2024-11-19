import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:quran_app/my_app/my_app.dart";
import "package:quran_app/providers/Language_provider.dart";
import "package:quran_app/providers/theme_Provider.dart";

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider()..getTheme(),
        ),
        ChangeNotifierProvider(
          create: (context) => LanguageProvider()..getLang(),
        ),
      ], // singletone instance
      child: MyApp(),
    ),
  );
}
