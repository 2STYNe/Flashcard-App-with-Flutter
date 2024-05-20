import 'package:flutter/material.dart';

class FDialogBox extends StatelessWidget {
  final String firstField;
  final String secondField;
  const FDialogBox({
    super.key,
    required this.firstField,
    required this.secondField,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 12),
        child: SizedBox(
          height: 230,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: firstField),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    minLines: 3,
                    maxLines: 4,
                    decoration: InputDecoration(
                        labelText: secondField, alignLabelWithHint: true),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Cancel"),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Save"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
