import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/color_manager.dart';
import 'package:quran_app/core/utils/strings_manager.dart';
import 'package:quran_app/presentation/home/tabs/settings_tab/widget/language_bottom_sheet.dart';
import 'package:quran_app/presentation/home/tabs/settings_tab/widget/theme_botton_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            StringsManager.settingsTheme,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border:
                    Border.all(color: Theme.of(context).dividerColor, width: 2),
              ),
              child: const Text(
                'Light',
                style: TextStyle(
                    fontSize: 20,
                    color: ColorsManager.goldColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            StringsManager.settingsLanguage,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border:
                    Border.all(color: Theme.of(context).dividerColor, width: 2),
              ),
              child: Text(
                'English',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeBotoomSheet(),
    );
  }
}

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => const LanguageBotoomSheet(),
  );
}
