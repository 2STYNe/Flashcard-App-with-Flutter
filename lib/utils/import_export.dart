import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flashcard_app_with_flutter/models/collection_model.dart';

class ImportExportUtils {
  static Future<String> exportCardCollections(
      List<CardCollection> cardCollection) async {
    try {
      String jsonString =
          jsonEncode(cardCollection.map((e) => e.toJson()).toList());
      String? outputFilePath = await FilePicker.platform.saveFile(
        dialogTitle: 'Save Card Collection',
        fileName: 'cardcollection.txt',
        type: FileType.custom,
        allowedExtensions: ['txt'],
        bytes: utf8.encode(jsonString),
      );

      if (outputFilePath != null) {
        print(jsonString);
        // File outputFile = File(outputFilePath);

        // outputFile.writeAsStringSync(jsonString);
        return 'Export Successful!';
      } else {
        return 'Export Cancelled';
      }
    } catch (e) {
      return 'Error exporting CardCollection: $e';
    }
  }

  static Future<dynamic> importCardCollections() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['txt'],
        allowMultiple: false,
      );

      if (result != null && result.files.isNotEmpty) {
        String filePath = result.files.first.path!;
        // String jsonString = utf8.
        String jsonString = File(filePath).readAsStringSync();
        List<dynamic> jsonList = jsonDecode(jsonString);
        print("Import Successful");
        return jsonList.map((e) => CardCollection.fromJson(e)).toList();
      } else {
        print('Import cancelled');
        return 'Import cancelled';
      }
    } catch (e) {
      print('Error importing CardCollection: $e');
      return 'Error importing CardCollection: $e';
    }
  }
}
