import 'package:flashcard_app_with_flutter/models/collection_model.dart';
import 'package:flashcard_app_with_flutter/pages/collections_page.dart';
import 'package:flutter/material.dart';

class CollectionCard extends StatelessWidget {
  final CardCollection collection;
  const CollectionCard({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollectionPage(collection: collection),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 175,
        child: Card.filled(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
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
                          collection.title,
                          style: textTheme.titleLarge,
                        ),
                        Text(
                          "No. of Cards: ${collection.noOfFlashcards}",
                          style: textTheme.bodyLarge?.copyWith(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.more_vert),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/practice");
                  },
                  child: Text(
                    "Practice",
                    style: textTheme.bodyLarge?.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
