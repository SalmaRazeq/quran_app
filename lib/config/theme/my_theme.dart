import "package:flutter/material.dart";
import "package:quran_app/core/utils/color_manager.dart";

class MyTheme {
  static bool isDarkEnable = true;
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.goldColor),
    primaryColor: ColorsManager.goldColor,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: ColorsManager.black),
        backgroundColor: Colors.transparent,
        elevation: 0),
    cardTheme: CardTheme(
      elevation: 20,
      color: ColorsManager.white.withOpacity(0.8),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
    dividerColor: ColorsManager.goldColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.goldColor,
      selectedItemColor: ColorsManager.black,
      selectedIconTheme: IconThemeData(
        size: 52,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedItemColor: ColorsManager.white,
      unselectedIconTheme: IconThemeData(size: 50),
      selectedLabelStyle: TextStyle(fontSize: 18),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: ColorsManager.black),
      titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: ColorsManager.black),
      bodySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: ColorsManager.black),
      labelSmall: TextStyle(
          fontSize: 20,
          color: ColorsManager.white,
          fontWeight: FontWeight.w500),
      labelMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: ColorsManager.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      backgroundColor: ColorsManager.goldColor,
    )),
    bottomSheetTheme: BottomSheetThemeData(
      elevation: 12,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      backgroundColor: ColorsManager.lighterGoldColor.withOpacity(0.7),
    ),
    iconTheme: const IconThemeData(
      size: 30,
      color: ColorsManager.white,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.darkBlueColor,
      shadow: ColorsManager.black,
    ),
    primaryColor: ColorsManager.darkBlueColor,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: ColorsManager.white),
        backgroundColor: Colors.transparent,
        elevation: 0),
    cardTheme: CardTheme(
      elevation: 20,
      color: ColorsManager.darkBlueColor.withOpacity(0.8),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
    dividerColor: ColorsManager.yellowColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.darkBlueColor,
      selectedItemColor: ColorsManager.yellowColor,
      selectedIconTheme: IconThemeData(
        size: 52,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedItemColor: ColorsManager.white,
      unselectedIconTheme: IconThemeData(size: 50),
      selectedLabelStyle: TextStyle(fontSize: 18),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: ColorsManager.white),
      titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: ColorsManager.white),
      bodySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: ColorsManager.white),
      labelSmall: TextStyle(
          fontSize: 20,
          color: ColorsManager.yellowColor,
          fontWeight: FontWeight.w400),
      labelMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: ColorsManager.yellowColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      backgroundColor: ColorsManager.yellowColor,
    )),
    bottomSheetTheme: BottomSheetThemeData(
      elevation: 12,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      backgroundColor: ColorsManager.darkBlueColor.withOpacity(0.7),
    ),
    iconTheme: const IconThemeData(
      size: 30,
      color: ColorsManager.yellowColor,
    ),
  );
}
