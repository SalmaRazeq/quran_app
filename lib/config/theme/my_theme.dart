import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/color_manager.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.goldColor),
    primaryColor: ColorsManager.goldColor,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0),
    cardTheme: CardTheme(
      elevation: 20,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
    dividerColor: ColorsManager.goldColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        size: 55,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(size: 36),
      selectedLabelStyle: TextStyle(fontSize: 18),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
      bodySmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
      labelSmall: TextStyle(
          fontSize: 20,
          color: ColorsManager.goldColor,
          fontWeight: FontWeight.w400),
      labelMedium: TextStyle(
          fontSize: 25, color: Colors.white, fontWeight: FontWeight.w400),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      backgroundColor: ColorsManager.goldColor,
    )),
    bottomSheetTheme: const BottomSheetThemeData(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      backgroundColor: ColorsManager.lighterGoldColor,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.darkBlueColor),
    primaryColor: ColorsManager.darkBlueColor,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        size: 55,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(size: 36),
      selectedLabelStyle: TextStyle(fontSize: 18),
    ),
  );
}
