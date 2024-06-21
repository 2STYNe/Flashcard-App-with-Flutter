import 'package:flashcard_app_with_flutter/components/practice_card.dart';
import 'package:flashcard_app_with_flutter/models/collection_model.dart';
import 'package:flutter/material.dart';

class PracticePage extends StatefulWidget {
  final CardCollection collection;
  const PracticePage({super.key, required this.collection});

  @override
  State<PracticePage> createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  late List<bool> _showFrontSide;

  @override
  void initState() {
    super.initState();
    _showFrontSide =
        List.generate(widget.collection.flashcards.length, (index) => true);
  }

  void changeSide(int index) {
    setState(() {
      _showFrontSide[index] = !_showFrontSide[index];
    });
  }

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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: PageView.builder(
                itemCount: widget.collection.flashcards.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => changeSide(index),
                        child: AnimatedCrossFade(
                          layoutBuilder: (topChild, topChildKey, bottomChild,
                              bottomChildKey) {
                            return Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: <Widget>[
                                Positioned(
                                  key: bottomChildKey,
                                  child: bottomChild,
                                ),
                                Positioned(
                                  key: topChildKey,
                                  child: topChild,
                                ),
                              ],
                            );
                          },
                          firstChild: PracticeCard(
                            isFrontSide: true,
                            cardData: widget.collection.flashcards[index],
                          ),
                          secondChild: PracticeCard(
                            isFrontSide: false,
                            cardData: widget.collection.flashcards[index],
                          ),
                          crossFadeState: _showFrontSide[index]
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                          duration: const Duration(milliseconds: 1200),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      child: Row(
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
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.white),
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
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
