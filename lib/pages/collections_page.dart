import 'package:flashcard_app_with_flutter/components/dialog_box.dart';
import 'package:flashcard_app_with_flutter/components/flashcard.dart';
import 'package:flashcard_app_with_flutter/models/card_provider.dart';
import 'package:flashcard_app_with_flutter/models/collection_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CollectionPage extends StatelessWidget {
  final CardCollection collection;
  const CollectionPage({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    return Consumer<CardProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(),
        body: Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              collection.flashcards.length,
              (index) => FlashCard(cardData: collection.flashcards[index]),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const FDialogBox(
                      firstField: "Front Side", secondField: "Back Side");
                });
          },
          icon: const Icon(Icons.add),
          label: const Text("Add Card"),
        ),
      ),
    );
  }
}
