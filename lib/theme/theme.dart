import 'package:flutter/material.dart';
import 'package:ipe_application/Constants/colors.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: main_color,
      secondary: final_color,
      onPrimary: Colors.black,
      error: Colors.red,
    ));

ThemeData DarkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: const Color(0XFF080808),
      primary: main_color,
      secondary: final_color,
      onPrimary: Colors.white,
      error: Colors.red,
    ));
