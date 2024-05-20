import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("General"),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            Column(children: [
              ListTile(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0)) ,
                hoverColor: Colors.grey,
                leading: Icon(Icons.abc),
                title: Text("setting"),
              ),
              
            ])
          ],
        ),
      ),
    );
  }
}
