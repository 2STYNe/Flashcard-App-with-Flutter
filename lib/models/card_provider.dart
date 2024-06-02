import 'package:flashcard_app_with_flutter/models/collection_model.dart';
import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CardProvider extends ChangeNotifier {
  final collectionBox = Hive.box<CardCollection>("card_collection");
  final cardBox = Hive.box<FlashCardData>("flashcard_data");
  List<CardCollection> collections = [];

  void loadData() {
    collections = collectionBox.values.toList();
    notifyListeners();
  }

  void addCollection(CardCollection collection) async {
    await collectionBox.add(collection);

    collections.add(collection);
    // updateDatabase();
    notifyListeners();
  }

  void removeCollection(CardCollection collection) async {
    await collection.delete();
    collections.remove(collection);
    notifyListeners();
  }

  void addCardToCollection(
      CardCollection collection, FlashCardData card) async {
    await cardBox.add(card);
    collection.flashcards.add(card);
    collection.save();
    print(collection.flashcards);
    notifyListeners();
  }

  // void removeCardFromCollection(CardCollection collection, FlashCardData card) {
  void removeCardFromCollection(FlashCardData card) async {
    // List<FlashCardData> tempList = [...collection.flashcards];
    // tempList.remove(card);
    // collection.flashcards = tempList;
    // updateDatabase();
    // cardBox.delete(card);
    // collection.flashcards.remove(card);
    // collection.save();

    await card.delete();
    notifyListeners();
  }

  List<FlashCardData> allCards() {
    return collections.expand((element) => element.flashcards).toList();
  }

  void setCollectionDetails(
      CardCollection collection, String title, String desc) {
    collection.setDetails(title, desc);
    collection.save();
    // updateDatabase();
    notifyListeners();
  }

  void setFlashCardDetails(
    FlashCardData flashcard,
    String frontSide,
    String backSide,
  ) {
    flashcard.setFrontSide = frontSide;
    flashcard.setBackSide = backSide;
    flashcard.save();
    // updateDatabase();
    notifyListeners();
  }

  void updateDatabase() async {
    await collectionBox.clear();

    print("Works here too");
    await collectionBox.addAll(collections);

    print("Hello there");
  }
}
