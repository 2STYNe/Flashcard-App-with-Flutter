import 'package:flashcard_app_with_flutter/components/collection_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.more_vert)],
      ),
      drawer: const Drawer(
        child: ListTile(
          title: Text("Hey there"),
        ),
      ),
      body: const Column(
        children: [
          CollectionCard(),
          // FlashCard(),
        ],
      ),
    );
  }
}
