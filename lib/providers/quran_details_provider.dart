import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsProvider extends ChangeNotifier {
  List<String> verses = [];

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    var fileLines = fileContent.split("\n");

    verses = fileLines;
    notifyListeners();
  }
}
