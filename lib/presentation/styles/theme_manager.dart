import 'package:flutter/material.dart';
import 'color_manager.dart';

ThemeData getApplicationTheme ()
{
  return ThemeData(
    // color theme
    primaryColor: ColorManager.primary,
    disabledColor: ColorManager.lightGrey,
    splashColor: ColorManager.primary,
    scaffoldBackgroundColor: ColorManager.whiteDark,

    appBarTheme: AppBarTheme(
      color: ColorManager.white,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        fontSize: 16.0,
        color: ColorManager.white,
      ),
    ),

  );
}