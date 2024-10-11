import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/core/utils/strings_manager.dart';
import 'package:quran_app/presentation/home/tabs/hadith_tab/hadith_tab.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadithArgs = ModalRoute.of(context)?.settings.arguments as Hadith;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsManager.lightMainBg),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(StringsManager.appTitle),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          hadithArgs.title,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).dividerColor,
                        height: 2,
                        thickness: 2,
                        endIndent: 42,
                        indent: 42,
                      ),
                      Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            hadithArgs.content,
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
