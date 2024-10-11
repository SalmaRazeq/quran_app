import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/core/utils/strings_manager.dart';
import 'package:quran_app/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/home/tabs/settings_tab/settings_tab.dart';
import 'package:quran_app/presentation/home/tabs/tasbeh_tab/tasbeh_tab.dart';

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
    RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsManager.lightMainBg), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(StringsManager.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                  label: 'Hadith'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                label: 'Radio',
              ),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: Icon(Icons.settings),
                  label: 'Settigns'),
            ]),
        body: tabs[selectedIndex],
      ),
    );
  }
}
