import 'package:flashcard_app_with_flutter/models/card_provider.dart';
import 'package:flashcard_app_with_flutter/models/collection_model.dart';
import 'package:flashcard_app_with_flutter/pages/allcards_page.dart';
import 'package:flashcard_app_with_flutter/pages/bookmarked_page.dart';
import 'package:flashcard_app_with_flutter/pages/home_page.dart';
import 'package:flashcard_app_with_flutter/pages/practice_page.dart';
import 'package:flashcard_app_with_flutter/pages/setting_page.dart';
import 'package:flashcard_app_with_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CardProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: FAppTheme.lightTheme,
        darkTheme: FAppTheme.darkTheme,
        themeMode: ThemeMode.light,
        routes: {
          "/": (context) => HomePage(),
          "/settings": (context) => const SettingPage(),
          "/allCards": (context) => const AllCardsPage(),
          "/bookmarked": (context) => const BookmarksPage(),
          "/practice": (context) => PracticePage(
                collection: CardCollection(title: "Front Side", desc: "Bye"),
              ),
        },
      ),
    );
  }
}
