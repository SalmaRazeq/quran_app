import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:provider/provider.dart";
import "package:quran_app/presentation/home/tabs/settings_tab/widget/language_bottom_sheet.dart";
import "package:quran_app/presentation/home/tabs/settings_tab/widget/theme_botton_sheet.dart";
import "package:quran_app/providers/Language_provider.dart";
import "package:quran_app/providers/theme_Provider.dart";

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var langProvider = Provider.of<LanguageProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
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
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8),
                border:
                    Border.all(color: Theme.of(context).dividerColor, width: 2),
              ),
              child: Text(
                themeProvider.isLightTheme()
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            AppLocalizations.of(context)!.language,
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
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8),
                border:
                    Border.all(color: Theme.of(context).dividerColor, width: 2),
              ),
              child: Text(
                langProvider.currentLanguage == 'en' ? 'English' : 'العربية',
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
      builder: (context) => const ThemeBottomSheet(),
    );
  }
}

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => const LanguageBotoomSheet(),
  );
}
