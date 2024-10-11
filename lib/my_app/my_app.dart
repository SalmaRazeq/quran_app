import 'package:flutter/material.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/utils/routes_manager.dart';
import 'package:quran_app/presentation/home/home_screen.dart';
import 'package:quran_app/presentation/home/tabs/hadith_tab/widgets/hadith_details_screen/hadith_details_screen.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/quran_details/quran_details_screen.dart';
import 'package:quran_app/presentation/splash/splash.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.homeRoute: (_) => HomeScreen(),
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.quranDetailsRoute: (_) => QuranDetailsScreen(),
        RoutesManager.hadithDetailsRoute: (_) => HadithDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
