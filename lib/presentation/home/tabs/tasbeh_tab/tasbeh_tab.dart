import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:quran_app/core/utils/assets_manager.dart";
import "package:quran_app/core/utils/color_manager.dart";

class TasbehTab extends StatefulWidget {
  TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab>
    with SingleTickerProviderStateMixin {
  int counter = 0;
  int index = 0;
  late AnimationController _controller;
  late Animation<double> _animation;
  List<String> tasbehatList = [
    "سبحان الله Sobhan Allah",
    "الحمدلله Elhamdullah",
    "الله اكبر Allah Akbar",
    "استغفر الله Astaghfar Allah",
    "لا اله الا الله La Elah ELa Allah",
    ""
  ];

  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  void tasbehCounting() {
    if (counter < 33) {
      setState(() {
        counter++;
      });
    } else {
      setState(() {
        counter = 0;
      });
    }
    _controller.forward(from: 0);
    if (index >= tasbehatList.length - 1) {
      index = 0;
    } else if (counter == 0) {
      index++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Stack(
            children: [
              Positioned(
                child: AnimatedBuilder(
                    child: Image.asset(
                      AssetsManager.sebhaBody,
                    ),
                    animation: _animation,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: _animation.value,
                        child: child,
                      );
                    }),
              ),
              Positioned(
                right: 10,
                child: Image.asset(
                  AssetsManager.sebhaHead,
                ),
              )
            ],
          ),
        ),
        Text(
          AppLocalizations.of(context)!.tasbehNumber,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Card(
          elevation: 0,
          color: ColorsManager.lighterGoldColor,
          margin: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Text("$counter", style: Theme.of(context).textTheme.bodyMedium),
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
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ),
        //ListView.builder(itemBuilder: (context, index) => tasbehatList[index],)
      ],
    );
  }
}
