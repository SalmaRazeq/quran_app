import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/theme_Provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                themeProvider.changeAppTheme(ThemeMode.light);
              },
              child: themeProvider.currentTheme == ThemeMode.light
                  ? theSelectedTheme(AppLocalizations.of(context)!.light)
                  : theUnSelectedTheme(AppLocalizations.of(context)!.light)),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              themeProvider.changeAppTheme(ThemeMode.dark);
            },
            child: themeProvider.currentTheme == ThemeMode.dark
                ? theSelectedTheme(AppLocalizations.of(context)!.dark)
                : theUnSelectedTheme(AppLocalizations.of(context)!.dark),
          )
        ],
      ),
    );
  }

  Widget theSelectedTheme(String selectedTheme) {
    return Row(
      children: [
        Text(
          selectedTheme,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Spacer(),
        const Icon(
          Icons.check,
        ),
      ],
    );
  }

  Widget theUnSelectedTheme(String unSelectedTheme) {
    return Row(
      children: [
        Text(
          unSelectedTheme,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
