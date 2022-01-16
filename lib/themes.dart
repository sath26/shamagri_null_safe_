// TODO Implement this library.

import 'package:flutter/material.dart';

class MyThemes {
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
  );

  static final hideBillButton = true;
  static final showBillButton = false;
}
