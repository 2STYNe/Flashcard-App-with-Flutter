import 'package:flashcard_app_with_flutter/components/dialog_box.dart';
import 'package:flashcard_app_with_flutter/components/flashcard.dart';
import 'package:flutter/material.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: List.generate(4, (index) => const FlashCard()),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const FDialogBox(
                    firstField: "Front Side", secondField: "Back Side");
              });
        },
        icon: const Icon(Icons.add),
        label: const Text("Add Card"),
      ),
    );
  }
}
