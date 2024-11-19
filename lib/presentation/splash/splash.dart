import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:quran_app/core/utils/assets_manager.dart";
import "package:quran_app/core/utils/routes_manager.dart";
import "package:quran_app/providers/theme_Provider.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
    });
    return Scaffold(
      body: Image.asset(
        themeProvider.isLightTheme()
            ? AssetsManager.lightSplashScreen
            : AssetsManager.darkSplashScreen,
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
