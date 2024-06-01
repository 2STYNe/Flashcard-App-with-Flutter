import 'package:flashcard_app_with_flutter/models/collection_model.dart';
import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';
import 'package:flutter/material.dart';

class CardProvider extends ChangeNotifier {
  List<CardCollection> collections = [
    CardCollection(title: "Dandelions", desc: ""),
    CardCollection(title: "Dandelions", desc: ""),
    CardCollection(title: "Dandelions", desc: ""),
  ];
  void addCollection(CardCollection collection) {
    collections.add(collection);
    notifyListeners();
  }

  void removeCollection(CardCollection collection) {
    collections.remove(collection);
    notifyListeners();
  }

  void addCardToCollection(CardCollection collection, FlashCardData card) {
    collection.addFlashcard(card);
    notifyListeners();
  }

  void removeCardFromCollection(CardCollection collection, FlashCardData card) {
    collection.removeFlashcard(card);
    notifyListeners();
  }

  List<FlashCardData> allCards() {
    return collections.expand((element) => element.flashcards).toList();
  }
}
