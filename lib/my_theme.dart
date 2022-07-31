import 'package:flutter/material.dart';

class MyTheme {
  static const Color primaryColor = Color(0xFFB7935F);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 16, color: Colors.black),
        headline4: TextStyle(fontSize: 28, color: Colors.black),
        headline5: TextStyle(fontSize: 24, color: Colors.black),
      ));
}
