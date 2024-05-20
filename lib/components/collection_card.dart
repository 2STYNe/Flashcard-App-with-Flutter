import 'package:flutter/material.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 150,
      child: Card.filled(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Title",
                    style: textTheme.displayMedium,
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                // color: Theme.of(context).colorScheme.secondary,
                child: Text(
                  "Practice",
                  style: textTheme.bodyLarge,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
