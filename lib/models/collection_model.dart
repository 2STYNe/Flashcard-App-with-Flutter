import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';

class CardCollection {
  List<FlashCardData> flashcards = [
    // FlashCardData(frontSide: "frontSide", backSide: "backSide")
  ];
  String title;
  String desc;
  CardCollection({required this.title, required this.desc});

  get getFlashcards => flashcards;
  get noOfFlashcards => flashcards.length;

  void addFlashcard(FlashCardData flashcard) {
    flashcards.add(flashcard);
  }

  void removeFlashcard(FlashCardData flashcard) {
    flashcards.remove(flashcard);
  }

  void setDetails(String title, String desc) {
    this.title = title;
    this.desc = desc;
  }
}
