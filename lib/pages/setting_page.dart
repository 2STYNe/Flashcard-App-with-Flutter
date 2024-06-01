import 'package:flashcard_app_with_flutter/components/settings_tile.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  //TODO: give functionality to the setting tiles
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "General",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 5,
            ),
            const Column(children: [
              SettingsTile(
                icon: Icons.font_download,
                settingTitle: "Font Size",
                settingDesc: "Change the font size",
              ),
              SettingsTile(
                icon: Icons.import_export,
                settingTitle: "Import/Export Cards",
              ),
              SettingsTile(
                icon: Icons.privacy_tip,
                settingTitle: "Privacy Policy",
              ),
              SettingsTile(icon: Icons.info, settingTitle: "About"),
            ])
          ],
        ),
      ),
    );
  }
}
