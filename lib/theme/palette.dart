import 'package:flutter/material.dart';

class Palette {
  static const backgroundColor = Color.fromRGBO(211, 211, 211, 1.0);
  static const textColor = Color.fromRGBO(0,0,0,1);
  static const drawerBackgroundColor = Color.fromRGBO(175, 175, 213, 1.0);

  static var lightModeTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      foregroundColor: textColor,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: drawerBackgroundColor,
    ),
    primaryColor: textColor
  );
}