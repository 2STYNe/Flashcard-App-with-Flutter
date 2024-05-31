import 'package:flutter/material.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                margin: const EdgeInsets.only(bottom: 10),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Theme.of(context).colorScheme.error,
                    ),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                  ),
                  child: const Text("Hard"),
                ),
                FilledButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 25, 190, 30),
                    ),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  child: const Text("Good"),
                ),
                FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Theme.of(context).colorScheme.secondary,
                    ),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                  ),
                  child: const Text("Easy"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
