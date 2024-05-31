import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';

class CardCollection {
  List<FlashCardData> flashcards = [
    FlashCardData(frontSide: "frontSide", backSide: "backSide")
  ];
  final String title;
  CardCollection({required this.title});

  get getFlashcards => flashcards;
  get noOfFlashcards => flashcards.length;

  void addFlashcard(FlashCardData flashcard) {
    flashcards.add(flashcard);
  }

  void removeFlashcard(FlashCardData flashcard) {
    flashcards.remove(flashcard);
  }
}
