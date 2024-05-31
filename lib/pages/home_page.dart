import 'package:flashcard_app_with_flutter/components/collection_card.dart';
import 'package:flashcard_app_with_flutter/components/dialog_box.dart';
import 'package:flashcard_app_with_flutter/components/drawer.dart';
import 'package:flashcard_app_with_flutter/models/card_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CardProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          actions: const [Icon(Icons.more_vert)],
        ),
        drawer: const FDrawer(),
        body: ListView.builder(
          itemCount: value.collections.length,
          itemBuilder: (context, index) => CollectionCard(
            collection: value.collections[index],
          ),
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
      ),
    );
  }
}
