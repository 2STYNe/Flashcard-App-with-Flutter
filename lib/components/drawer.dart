import 'package:flashcard_app_with_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';

class FDrawer extends StatelessWidget {
  const FDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            Image.asset("assets/Logo.png"),
            const SizedBox(
              height: 25.0, // Adjust the value as needed
            ),
            const Divider(
              indent: 50,
              endIndent: 50,
              height: 1,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Theme(
              data: FAppTheme.darkTheme,
              child: const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      leading: Icon(Icons.list),
                      title: Text("All Cards"),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Setting"),
                    ),
                    ListTile(
                      leading: Icon(Icons.help),
                      title: Text("Help"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
