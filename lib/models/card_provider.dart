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

  void addCardToCollection(FlashCardData card) {
    card.parentCollection.addFlashcard(card);
    // collection.addFlashcard(card);
    notifyListeners();
  }

  void removeCardFromCollection(FlashCardData card) {
    card.parentCollection.removeFlashcard(card);
    notifyListeners();
  }

  List<FlashCardData> allCards() {
    return collections.expand((element) => element.flashcards).toList();
  }

  void setCollectionDetails(
      CardCollection collection, String title, String desc) {
    collection.setDetails(title, desc);
    notifyListeners();
  }

  void setFlashCardDetails(
    FlashCardData flashcard,
    String frontSide,
    String backSide,
  ) {
    flashcard.setFrontSide = frontSide;
    flashcard.setBackSide = backSide;
    notifyListeners();
  }
}
