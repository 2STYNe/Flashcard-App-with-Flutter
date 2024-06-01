import 'package:flashcard_app_with_flutter/components/flashcard.dart';
import 'package:flashcard_app_with_flutter/models/card_provider.dart';
import 'package:flashcard_app_with_flutter/models/flashcard_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllCardsPage extends StatelessWidget {
  const AllCardsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final cardProvider = Provider.of<CardProvider>(context);
    final List<FlashCardData> allCards = cardProvider.allCards();

    return Consumer<CardProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("All Cards"),
        ),
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                  allCards.length,
                  (index) => FlashCard(
                        cardData: allCards[index],
                      )),
            ),
          ),
        ),
      ),
    );
  }
}
