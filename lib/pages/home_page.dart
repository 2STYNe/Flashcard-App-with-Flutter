import 'package:flutter/material.dart';

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
    );
  }
}
