import 'package:flutter/material.dart';
import 'package:islami_new/home/quran/sura_details.dart';
import 'package:islami_new/my_theme.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetails.routeName: (_) => const SuraDetails(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
