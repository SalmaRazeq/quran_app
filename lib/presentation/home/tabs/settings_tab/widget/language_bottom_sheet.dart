import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:quran_app/providers/Language_provider.dart";

class LanguageBotoomSheet extends StatefulWidget {
  const LanguageBotoomSheet({super.key});

  @override
  State<LanguageBotoomSheet> createState() => _LanguageBotoomSheetState();
}

class _LanguageBotoomSheetState extends State<LanguageBotoomSheet> {
  @override
  Widget build(BuildContext context) {
    var langProvider = Provider.of<LanguageProvider>(context);
    return Container(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                langProvider.changeAppLanguage('en');
              },
              child: langProvider.currentLanguage == 'en'
                  ? theSelectedLanguage("English")
                  : theUnSelectedLanguage("English")),
          const SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                langProvider.changeAppLanguage('ar');
              },
              child: langProvider.currentLanguage == 'ar'
                  ? theSelectedLanguage("العربية")
                  : theUnSelectedLanguage("العربية")),
        ],
      ),
    );
  }

  Widget theSelectedLanguage(String selectedLanguage) {
    return Row(
      children: [
        Text(
          selectedLanguage,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Spacer(),
        const Icon(
          Icons.check,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget theUnSelectedLanguage(String unSelectedLanguage) {
    return Row(
      children: [
        Text(
          unSelectedLanguage,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
