import 'package:flutter/material.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 14, color: Colors.green),
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
