import 'package:hive/hive.dart';

part 'flashcard_model.g.dart';

@HiveType(typeId: 1)
class FlashCardData extends HiveObject {
  @HiveField(0)
  String frontSide;

  @HiveField(1)
  String backSide;

  @HiveField(2)
  bool isBookmarked;

  FlashCardData({
    required this.frontSide,
    required this.backSide,
    this.isBookmarked = false,
  });

  get bookmarked => isBookmarked;
  set setFrontSide(value) => frontSide = value;
  set setBackSide(value) => backSide = value;
  get getFrontSide => frontSide;
  get getBackSide => backSide;
  void toggleBookmark() {
    isBookmarked = !isBookmarked;
    save();
  }
}
