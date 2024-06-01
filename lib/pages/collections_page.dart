import 'package:flashcard_app_with_flutter/components/dialog_box.dart';
import 'package:flashcard_app_with_flutter/components/flashcard.dart';
import 'package:flashcard_app_with_flutter/models/card_provider.dart';
import 'package:flashcard_app_with_flutter/models/collection_model.dart';
import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CollectionPage extends StatelessWidget {
  final CardCollection collection;
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  CollectionPage({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    void onSave(CardProvider value) {
      FlashCardData newFlashcard = FlashCardData(
        frontSide: firstController.text,
        backSide: secondController.text,
        parentCollection: collection,
      );
      firstController.clear();
      secondController.clear();
      value.addCardToCollection(newFlashcard);
      Navigator.of(context).pop();
    }

    return Consumer<CardProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(),
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                collection.flashcards.length,
                (index) => FlashCard(
                  cardData: collection.flashcards[index],
                  parentCollection: collection,
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return FDialogBox(
                    firstField: "Front Side",
                    secondField: "Back Side",
                    firstController: firstController,
                    secondController: secondController,
                    onSave: () {
                      onSave(value);
                    },
                  );
                });
          },
          icon: const Icon(Icons.add),
          label: const Text("Add Card"),
        ),
      ),
    );
  }
}
