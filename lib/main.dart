import 'package:flashcard_app_with_flutter/pages/collections_page.dart';
import 'package:flashcard_app_with_flutter/pages/home_page.dart';
import 'package:flashcard_app_with_flutter/pages/setting_page.dart';
import 'package:flashcard_app_with_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FAppTheme.lightTheme,
      darkTheme: FAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        "/": (context) => const HomePage(),
        "/settings": (context) => const SettingPage(),
        "/collection": (context) => const CollectionPage(),
      },
    );
  }
}
