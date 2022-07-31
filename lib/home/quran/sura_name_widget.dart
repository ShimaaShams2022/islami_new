import 'package:flutter/material.dart';
import 'package:islami_new/home/quran/sura_details.dart';

class SuraNameWidget extends StatelessWidget {
  SuraNameWidget(this.title, this.index, {Key? key}) : super(key: key);

  String title;
  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailsArgs(index, title));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        alignment: Alignment.center,
        child: Text(title, style: Theme.of(context).textTheme.headline5),
      ),
    );
  }
}
