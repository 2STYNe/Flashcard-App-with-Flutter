import 'package:flashcard_app_with_flutter/themes/appbar_theme.dart';
import 'package:flashcard_app_with_flutter/themes/color_scheme.dart';
import 'package:flashcard_app_with_flutter/themes/drawer_theme.dart';
import 'package:flashcard_app_with_flutter/themes/elevated_button_theme.dart';
import 'package:flashcard_app_with_flutter/themes/text_theme.dart';
import 'package:flutter/material.dart';

class FAppTheme {
  FAppTheme._();

  static ThemeData lightTheme = ThemeData(
    appBarTheme: FAppBarTheme.lightTheme,
    drawerTheme: FDrawerTheme.lightTheme,
    colorScheme: FColorScheme.lightTheme,
    textTheme: FTextTheme.lightTheme,
    elevatedButtonTheme: FElevatedButtonTheme.lightTheme,
    useMaterial3: true,
  );

  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true);
}
