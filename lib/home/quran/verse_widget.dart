import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  VerseWidget(this.index, this.content, {Key? key}) : super(key: key);

  String content;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      alignment: Alignment.center,
      child: Text('{${index + 1}} $content ',
          style: Theme.of(context).textTheme.bodyText1),
    );
  }
}
