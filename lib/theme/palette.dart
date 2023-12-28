import 'package:flutter/material.dart';

class Palette {
  static const backgroundColor = Colors.white;
  static const textColor = Color.fromRGBO(0,0,0,1);
  static const drawerBackgroundColor = Color.fromRGBO(230, 230, 230, 1.0);

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