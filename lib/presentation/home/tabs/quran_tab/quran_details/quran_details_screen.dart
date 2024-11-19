import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:quran_app/core/utils/assets_manager.dart";
import "package:quran_app/presentation/home/tabs/quran_tab/quran_details/quran_widgets.dart";
import "package:quran_app/presentation/home/tabs/quran_tab/widgets/quran_title_widget/quran_title_widget.dart";
import "package:quran_app/providers/quran_details_provider.dart";
import "package:quran_app/providers/theme_Provider.dart";

class QuranDetailsScreen extends StatefulWidget {
  const QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var quranProvider = Provider.of<QuranDetailsProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (quranProvider.verses.isEmpty) quranProvider.readFile(args.index + 1);

    // if (verses.isEmpty) {
    //   readFile(args.index);
    // }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(themeProvider.isLightTheme()
                  ? AssetsManager.lightMainBg
                  : AssetsManager.darkMainBg),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.suraName),
          ),
          body: quranProvider.verses.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      VersesWidget(verseItem: quranProvider.verses[index]),
                  itemCount: quranProvider.verses.length,
                )),
    );
  }

// void readFile(int index) async {
//   String fileContent =
//       await rootBundle.loadString("assets/files/${index + 1}.txt");
//   var fileLines = fileContent.split("\n");
//   // fileLines.forEach((element) {
//   //   print(element);
//   // });
//   verses = fileLines;
//   setState(() {});
// }
}
