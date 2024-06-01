import 'package:flashcard_app_with_flutter/components/collection_card.dart';
import 'package:flashcard_app_with_flutter/components/dialog_box.dart';
import 'package:flashcard_app_with_flutter/components/drawer.dart';
import 'package:flashcard_app_with_flutter/models/card_provider.dart';
import 'package:flashcard_app_with_flutter/models/collection_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  //TODO: Enable sorting or just simply delete the actions in the app bar
  @override
  Widget build(BuildContext context) {
    void onSave(CardProvider value) {
      CardCollection newCollection = CardCollection(
        title: firstController.text,
        desc: secondController.text,
      );
      firstController.clear();
      secondController.clear();
      value.addCollection(newCollection);
      Navigator.of(context).pop();
    }

    return Consumer<CardProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          actions: const [Icon(Icons.more_vert)],
        ),
        drawer: const FDrawer(),
        // body: Text("Hello there"),
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
              builder: (context) => FDialogBox(
                firstField: "Name",
                secondField: "Description - Optional",
                firstController: firstController,
                secondController: secondController,
                onSave: () {
                  onSave(value);
                },
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
