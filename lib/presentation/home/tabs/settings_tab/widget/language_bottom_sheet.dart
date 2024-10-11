import 'package:flutter/material.dart';

class LanguageBotoomSheet extends StatefulWidget {
  const LanguageBotoomSheet({super.key});

  @override
  State<LanguageBotoomSheet> createState() => _LanguageBotoomSheetState();
}

class _LanguageBotoomSheetState extends State<LanguageBotoomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          theSelectedLanguage('English'),
          const SizedBox(
            height: 10,
          ),
          theUnSelectedLanguage('العربية'),
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
          size: 30,
        ),
      ],
    );
  }

  Widget theUnSelectedLanguage(String unSelectedLanguage) {
    return Text(
      unSelectedLanguage,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
