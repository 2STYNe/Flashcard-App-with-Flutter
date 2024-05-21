import 'package:flashcard_app_with_flutter/themes/text_theme.dart';
import 'package:flutter/material.dart';

class FAppBarTheme {
  FAppBarTheme._();

  static AppBarTheme lightTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    titleTextStyle: FTextTheme.lightTheme.titleMedium,
    elevation: 0,
  );
}
