import 'package:flutter/material.dart';

class FElevatedButtonTheme {
  FElevatedButtonTheme._();

  static ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      textStyle: const TextStyle(color: Colors.white),
      backgroundColor: const Color.fromARGB(255, 21, 126, 187),
      disabledBackgroundColor: Colors.grey,
      elevation: 0,
    ),
  );
}
