import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/routes_manager.dart';
import 'package:quran_app/presentation/home/tabs/hadith_tab/hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  Hadith hadith;

  HadithTitleWidget({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.hadithDetailsRoute,
          arguments: Hadith(title: hadith.title, content: hadith.content),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 3),
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
