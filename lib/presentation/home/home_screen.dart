import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:provider/provider.dart";
import "package:quran_app/core/utils/assets_manager.dart";
import "package:quran_app/presentation/home/tabs/hadith_tab/hadith_tab.dart";
import "package:quran_app/presentation/home/tabs/quran_tab/quran_tab.dart";
import "package:quran_app/presentation/home/tabs/radio_tab/radio_tab.dart";
import "package:quran_app/presentation/home/tabs/settings_tab/settings_tab.dart";
import "package:quran_app/presentation/home/tabs/tasbeh_tab/tasbeh_tab.dart";
import "package:quran_app/providers/theme_Provider.dart";

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    TasbehTab(),
    const RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(themeProvider.isLightTheme()
                  ? AssetsManager.lightMainBg
                  : AssetsManager.darkMainBg))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage(AssetsManager.quranIcon)),
                  label: AppLocalizations.of(context)!.quranTab),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                  label: AppLocalizations.of(context)!.hadithTab),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage(AssetsManager.tasbehIcon)),
                  label: AppLocalizations.of(context)!.hadithTab),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage(AssetsManager.radioIcon)),
                label: AppLocalizations.of(context)!.radioTab,
              ),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settingsTab),
            ]),
        body: tabs[selectedIndex],
      ),
    );
  }
}
