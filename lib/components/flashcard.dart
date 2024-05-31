import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';
import 'package:flutter/material.dart';

class FlashCard extends StatefulWidget {
  final FlashCardData cardData;

  const FlashCard({super.key, required this.cardData});

  @override
  State<FlashCard> createState() => _FlashCardState();
}

class _FlashCardState extends State<FlashCard> {
  bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: 200,
      height: 200,
      child: Card.filled(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.cardData.getFrontSide,
                        style: textTheme.titleMedium,
                      ),
                      Text(
                        widget.cardData.getBackSide,
                        style: textTheme.bodyLarge?.copyWith(
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 2),
                      child: const Icon(Icons.more_vert)),
                ],
              ),
              IconButton(
                tooltip: "Bookmark Flashcard",
                isSelected: widget.cardData.bookmarked,
                selectedIcon: const Icon(Icons.bookmark),
                onPressed: () {
                  widget.cardData.setBookmark = !isBookmarked;
                  setState(() {
                    isBookmarked = !isBookmarked;
                  });
                },
                icon: const Icon(Icons.bookmark_outline),
                color: Theme.of(context).colorScheme.tertiary,
                alignment: Alignment.bottomRight,
              )
            ],
          ),
        ),
      ),
    );
  }
}
