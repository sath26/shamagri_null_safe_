// TODO Implement this library.

import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData lightTheme1 = ThemeData.light();

  static ThemeData darkTheme1 = ThemeData.dark();
  static final primary = Colors.white;
  static final primaryColor = Colors.green.shade300;

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColorDark: primaryColor,
    colorScheme: ColorScheme.dark(primary: primary),
    dividerColor: Colors.white,
    backgroundColor: Colors.white,
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(primary: primary),
    dividerColor: Colors.black,
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.black),
  );

  static final hideBillButton = true;
  static final showBillButton = false;
}
