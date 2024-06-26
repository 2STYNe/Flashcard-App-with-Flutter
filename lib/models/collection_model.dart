import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';
import 'package:hive/hive.dart';

part 'collection_model.g.dart';

@HiveType(typeId: 0)
class CardCollection extends HiveObject {
  @HiveField(0)
  HiveList<FlashCardData> flashcards = HiveList(
    Hive.box<FlashCardData>('flashcard_data'),
  );

  @HiveField(1)
  String title;

  @HiveField(2)
  String desc;

  CardCollection({
    required this.title,
    required this.desc,
  });

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

  CardCollection.fromJson(Map<String, dynamic> json)
      : title = json['title'] ?? "",
        desc = json['desc'] ?? "" {
    List<dynamic> flashcardsFromJson = json['flashcards'];
    List<FlashCardData> temp = flashcardsFromJson
        .map(
          (e) => FlashCardData.fromJson(e),
        )
        .toList();

    flashcards = HiveList(
      Hive.box<FlashCardData>('flashcard_data'),
      objects: temp,
    );
  }
  Map<String, dynamic> toJson() => {
        'title': title,
        'desc': desc,
        'flashcards': flashcards,
      };
}
