import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:quran_app/config/theme/my_theme.dart";
import "package:quran_app/core/utils/assets_manager.dart";

class TasbehTab extends StatefulWidget {
  TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab>
    with SingleTickerProviderStateMixin {
  int counter = 0;
  int index = 0;
  List<String> tasbehatList = [
    "سبحان الله _ Sobhan Allah",
    "الحمدلله _ Elhamdullah",
    "الله اكبر _ Allah Akbar",
    "استغفر الله _ Astaghfar Allah",
    "لا اله الا الله _ La Elah ELa Allah",
    ""
  ];
  double angle = 0;

  void tasbehCounting() {
    angle += 0.12;
    if (counter < 33) {
      setState(() {
        counter++;
      });
    } else {
      setState(() {
        counter = 0;
      });
    }
    if (index >= tasbehatList.length - 1) {
      index = 0;
    } else if (counter == 0) {
      index++;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                MyTheme.isDarkEnable
                    ? AssetsManager.darkSebhaHead
                    : AssetsManager.sebhaHead,
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.085),
                child: Transform.rotate(
                  angle: angle,
                  child: Image.asset(
                    height: size.height * 0.29,
                    MyTheme.isDarkEnable
                        ? AssetsManager.darkSebhaBody
                        : AssetsManager.sebhaBody,
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 20),
          Text(
            AppLocalizations.of(context)!.tasbehNumber,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Card(
            elevation: 0,
            color: Theme.of(context).primaryColor.withOpacity(0.8),
            margin: const EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text("$counter",
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              tasbehCounting();
            },
            style: Theme.of(context).elevatedButtonTheme.style,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                tasbehatList[index],
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontSize: 23,
                    ),
              ),
            ),
          ),
          //ListView.builder(itemBuilder: (context, index) => tasbehatList[index],)
        ],
      ),
    );
  }
}
