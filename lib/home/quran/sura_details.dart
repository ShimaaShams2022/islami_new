import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_new/home/quran/verse_widget.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({Key? key}) : super(key: key);

  static const String routeName = 'sura-details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    if (verses.isEmpty) {
      readFile(args.index);
    }

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/default_bg.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(args.title),
        ),
        body: verses.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: ListView.separated(
                  itemBuilder: (_, index) {
                    return VerseWidget(index, verses[index]);
                  },
                  itemCount: verses.length,
                  separatorBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 2,
                    );
                  },
                ),
              ),
      ),
    );
  }

  void readFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split("\n");
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  int index;
  String title;

  SuraDetailsArgs(this.index, this.title);
}
