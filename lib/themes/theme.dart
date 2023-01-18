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
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: primaryColor,

    //AppBar theme
    appBarTheme: const AppBarTheme(color: primaryColor, elevation: 10),

    scaffoldBackgroundColor: Color.fromARGB(255, 74, 79, 109),
  );
}
