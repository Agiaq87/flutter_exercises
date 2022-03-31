import 'package:flutter/material.dart';
import 'package:flutter_exercises/customwidgets/alert_list_tile.dart';

class Mainmenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choose one',
      home: Scaffold(
          appBar: AppBar(title: const Text("Flutter Exercises")),
          body: Center(
              child: ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.warning_amber_outlined),
                title: const Text('AlertDialog'),
                subtitle: const Text('Tap to open a alert dialog'),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('AlertDialog'),
                          content: const Text('Hello there'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('CLOSE'))
                          ],
                        );
                      });
                },
              ),
              AlertListTile(
                  const Icon(Icons.warning_amber_outlined),
                  const Text('AlertDialog2'),
                  const Text('Tap to open a alert dialog'),
                  'AlertDialog22',
                  'My widget work',
                  'YUPPIE')
            ],
          ))),
    );
  }
}
