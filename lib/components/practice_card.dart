import 'package:flutter/material.dart';

class PracticeCard extends StatelessWidget {
  final String value;
  final VoidCallback onTap;
  const PracticeCard({super.key, required this.value, required this.onTap});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        key: key,
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
              isSelected: false,
              selectedIcon: const Icon(Icons.bookmark),
              onPressed: () {},
              icon: const Icon(Icons.bookmark_outline),
              color: Theme.of(context).colorScheme.tertiary,
              alignment: Alignment.bottomRight,
            ),
            Center(
                child: Text(
              value,
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
