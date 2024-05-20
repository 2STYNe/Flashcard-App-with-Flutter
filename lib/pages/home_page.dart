import 'package:flashcard_app_with_flutter/components/collection_card.dart';
import 'package:flashcard_app_with_flutter/components/dialog_box.dart';
import 'package:flashcard_app_with_flutter/components/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.more_vert)],
      ),
      drawer: const FDrawer(),
      body: const Column(
        children: [
          CollectionCard(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const FDialogBox(
              firstField: "Name",
              secondField: "Description - Optional",
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text("Add Collection"),
      ),
    );
  }
}
