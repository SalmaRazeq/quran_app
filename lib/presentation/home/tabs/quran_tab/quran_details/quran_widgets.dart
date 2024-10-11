import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  VersesWidget({super.key, required this.verseItem});

  String verseItem;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
          alignment: Alignment.center,
          child: Text(verseItem,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
