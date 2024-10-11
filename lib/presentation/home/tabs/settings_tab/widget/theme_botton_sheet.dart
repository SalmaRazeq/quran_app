import 'package:flutter/material.dart';

class ThemeBotoomSheet extends StatefulWidget {
  const ThemeBotoomSheet({super.key});

  @override
  State<ThemeBotoomSheet> createState() => _ThemeBotoomSheetState();
}

class _ThemeBotoomSheetState extends State<ThemeBotoomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          theSelectedTheme('Light'),
          const SizedBox(
            height: 10,
          ),
          theUnSelectedTheme('Dark'),
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
          color: Colors.white,
          size: 30,
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
