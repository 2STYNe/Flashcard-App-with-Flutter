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
      drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: [
                
                Image.asset("assets/Logo.png"),
                SizedBox(
                  height: 16.0, // Adjust the value as needed
                ),
                Divider(
                  indent: 50,
                  endIndent: 50,
                  height: 1,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    children: [
                      ListTile(
                        textColor: Colors.white,
                        iconColor: Colors.white,
                        leading: Icon(Icons.home),
                        title: Text("Home"),
                      ),
                      ListTile(
                        textColor: Colors.white,
                        iconColor: Colors.white,
                        leading: Icon(Icons.list),
                        title: Text("All Cards"),
                      ),
                      ListTile(
                        textColor: Colors.white,
                        iconColor: Colors.white,
                        leading: Icon(Icons.settings),
                        title: Text("Setting"),
                      ),
                      ListTile(
                        textColor: Colors.white,
                        iconColor: Colors.white,
                        leading: Icon(Icons.help),
                        title: Text("Help"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
