import 'package:flashcard_app_with_flutter/components/settings_tile.dart';
import 'package:flashcard_app_with_flutter/models/card_provider.dart';
import 'package:flashcard_app_with_flutter/models/collection_model.dart';
import 'package:flashcard_app_with_flutter/utils/import_export.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  //TODO: give functionality to the other setting tiles
  @override
  Widget build(BuildContext context) {
    CardProvider cardProvider = Provider.of<CardProvider>(context);
    List<CardCollection> collections = cardProvider.collections;
    void importCards() async {
      dynamic result = await ImportExportUtils.importCardCollections();
      var snackbar;
      if (result is List<CardCollection>) {
        cardProvider.addCollections(result);
        snackbar = const SnackBar(
          content: Text("Import Successful"),
        );
      } else if (result is String) {
        snackbar = SnackBar(
          content: Text(result),
        );
      }
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }

    void exportCards() async {
      String message =
          await ImportExportUtils.exportCardCollections(collections);
      final snackbar = SnackBar(
        content: Text(message),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }

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
            Column(children: [
              GestureDetector(
                onTap: () {},
                child: SettingsTile(
                  icon: Icons.font_download,
                  settingTitle: "Font Size",
                  settingDesc: "Change the font size",
                  onTap: () {},
                ),
              ),
              SettingsTile(
                icon: Icons.download,
                settingTitle: "Import Cards",
                onTap: importCards,
              ),
              SettingsTile(
                icon: Icons.upload,
                settingTitle: "Export Cards",
                // onTap: () =>
                //     ImportExportUtils.exportCardCollections(collections),
                onTap: exportCards,
              ),
              SettingsTile(
                icon: Icons.privacy_tip,
                settingTitle: "Privacy Policy",
                onTap: () {},
              ),
              SettingsTile(
                icon: Icons.info,
                settingTitle: "About",
                onTap: () {},
              ),
            ])
          ],
        ),
      ),
    );
  }
}
