import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      height: 300,
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
              SizedBox(
                height: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                            child: Center(
                              widthFactor: 1,
                              child: Text(
                                widget.cardData.getFrontSide,
                                style: textTheme.titleSmall,
                              ),
                            ),
                          ),
                          Text(
                            widget.cardData.getBackSide,
                            style: textTheme.bodySmall?.copyWith(
                              color: Colors.grey[700],
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: const Icon(Icons.more_vert)),
                  ],
                ),
              ),
              Flexible(
                child: SizedBox(
                  width: 40,
                  child: IconButton(
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
