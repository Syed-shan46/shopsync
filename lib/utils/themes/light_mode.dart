import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primaryFixed: Colors.black.withOpacity(0.8),
    onPrimary: Colors.black.withOpacity(0.8),
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade400,
    inversePrimary: Colors.grey.shade500,
    onSecondary: Colors.grey.shade500,
  ),
  textTheme: ThemeData.light().textTheme.apply(
    bodyColor: Colors.black.withOpacity(0.8),
    displayColor: Colors.black,
  ),
);
