import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          theSelectedTheme(AppLocalizations.of(context)!.light),
          const SizedBox(
            height: 10,
          ),
          theUnSelectedTheme(AppLocalizations.of(context)!.dark),
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
    return Text(
      unSelectedTheme,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
