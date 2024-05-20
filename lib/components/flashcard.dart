import 'package:flutter/material.dart';

class FlashCard extends StatelessWidget {
  const FlashCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: 200,
      width: 200,
      child: Card.filled(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Title",
                    style: textTheme.titleLarge,
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
              Icon(
                Icons.bookmark,
                color: Theme.of(context).colorScheme.tertiary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
