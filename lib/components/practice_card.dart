import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';
import 'package:flutter/material.dart';

class PracticeCard extends StatefulWidget {
  final String value;
  final FlashCardData cardData;
  final VoidCallback onTap;
  const PracticeCard({
    super.key,
    required this.value,
    required this.onTap,
    required this.cardData,
  });

  @override
  State<PracticeCard> createState() => _PracticeCardState();
}

class _PracticeCardState extends State<PracticeCard> {
  bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.only(bottom: 10),
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              tooltip: "Bookmark Flashcard",
              iconSize: 35,
              isSelected: widget.cardData.bookmarked,
              selectedIcon: const Icon(Icons.bookmark),
              onPressed: () {
                widget.cardData.toggleBookmark();
                setState(() {
                  isBookmarked = !isBookmarked;
                });
              },
              icon: const Icon(Icons.bookmark_outline),
              color: Theme.of(context).colorScheme.tertiary,
              alignment: Alignment.topLeft,
            ),
            Center(
                child: Text(
              widget.value,
              style: textTheme.titleLarge,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  iconSize: 35,
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 35,
                  icon: const Icon(Icons.repeat),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
