import 'package:flutter/material.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/collection");
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
                          "Collection Name",
                          style: textTheme.titleLarge,
                        ),
                        Text(
                          "No. of Cards",
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
      ),
    );
  }
}
