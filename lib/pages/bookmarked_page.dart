import 'package:flashcard_app_with_flutter/components/flashcard.dart';
import 'package:flashcard_app_with_flutter/models/card_provider.dart';
import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({super.key});
  @override
  Widget build(BuildContext context) {
    final cardProvider = Provider.of<CardProvider>(context);
    final List<FlashCardData> bookmarkedCards =
        cardProvider.allCards().where((element) => element.bookmarked).toList();
    return Consumer<CardProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Bookmarks"),
        ),
        body: bookmarkedCards.isEmpty
            ? Center(
                child: Text(
                  "No bookmarked Flashcards",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    bookmarkedCards.length,
                    (index) => FlashCard(
                      cardData: bookmarkedCards[index],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
