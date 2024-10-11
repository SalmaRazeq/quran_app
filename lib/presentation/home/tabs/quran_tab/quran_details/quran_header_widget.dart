import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/strings_manager.dart';

class QuranHeaderWidget extends StatelessWidget {
  const QuranHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.symmetric(
        horizontal: BorderSide(color: Theme.of(context).primaryColor, width: 3),
      )),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    StringsManager.versesNumber,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 23),
                  ),
                )),
            Expanded(
              flex: 1,
              child: VerticalDivider(
                color: Theme.of(context).dividerColor,
                thickness: 3,
                width: 2,
                indent: 0,
                endIndent: 0,
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    StringsManager.chapterName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 23),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
