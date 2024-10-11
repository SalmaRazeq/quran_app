import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/utils/assets_manager.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/quran_details/quran_widgets.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/widgets/quran_title_widget/quran_title_widget.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) {
      readFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsManager.lightMainBg), fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.suraName),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      VersesWidget(verseItem: verses[index]),
                  itemCount: verses.length,
                )),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    var fileLines = fileContent.split('\n');
    // fileLines.forEach((element) {
    //   print(element);
    // });
    verses = fileLines;
    setState(() {});
  }
}
