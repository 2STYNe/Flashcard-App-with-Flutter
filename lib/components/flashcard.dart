import 'package:flutter/material.dart';

class FlashCard extends StatelessWidget {
  const FlashCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: 200,
      height: 200,
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
                        "F. Side",
                        style: textTheme.titleMedium,
                      ),
                      Text(
                        "B. Side",
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
