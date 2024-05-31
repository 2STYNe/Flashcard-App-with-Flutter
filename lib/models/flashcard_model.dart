class FlashCardData {
  String _frontSide;
  String _backSide;
  bool isBookmarked;
  FlashCardData({
    required String frontSide,
    required String backSide,
    this.isBookmarked = false,
  })  : _backSide = backSide,
        _frontSide = frontSide;
  set setBookmark(value) => isBookmarked = value;
  get bookmarked => isBookmarked;
  set setFrontSide(value) => _frontSide = value;
  set setBackSide(value) => _backSide = value;
  get getFrontSide => _frontSide;
  get getBackSide => _backSide;
}
