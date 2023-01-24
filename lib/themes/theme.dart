import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 74, 96, 218);
  static const Color primaryColorDark = Color.fromARGB(255, 128, 143, 226);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: primaryColor,

      //AppBar theme
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 10),

      //Text button
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)),

      //floatingAction
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primaryColor),

      //Elevation botton
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              shape: const StadiumBorder(),
              elevation: 2)),

      //inputs
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primaryColor),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(15))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(15))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(15)))                  
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: primaryColor,

    //AppBar theme
    appBarTheme: const AppBarTheme(color: primaryColor, elevation: 10),

    scaffoldBackgroundColor: Color.fromARGB(255, 74, 79, 109),
  );
}
