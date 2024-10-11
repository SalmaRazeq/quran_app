import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/core/utils/color_manager.dart';
import 'package:quran_app/core/utils/strings_manager.dart';

class TasbehTab extends StatefulWidget {
  TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  List<String> tasbehatList = [
    'Sobhan Allah',
    'Elhamdullah',
    'Allah Akbar',
    'Astghfar Allah',
    'La Elah ELa Allah',
  ];

  void tasbehCounting() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Stack(
            children: [
              Image.asset(
                AssetsManager.sebhaBody,
              ),
              Positioned(right: 10, child: Image.asset(AssetsManager.sebhaHead))
            ],
          ),
        ),
        Text(StringsManager.tasbehNumber),
        Card(
          elevation: 0,
          color: ColorsManager.lighterGoldColor,
          margin: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Text('$counter', style: Theme.of(context).textTheme.bodyMedium),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            tasbehCounting();
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Sobhan Allah',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white),
            ),
          ),
          style: Theme.of(context).elevatedButtonTheme.style,
        ),
        //ListView.builder(itemBuilder: (context, index) => tasbehatList[index],)
      ],
    );
  }
}
