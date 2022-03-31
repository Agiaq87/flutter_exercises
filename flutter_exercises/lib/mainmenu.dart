import 'package:flutter/material.dart';

class Mainmenu extends StatelessWidget {
  /*void showAlert(BuildContext context) {
    */ /*var alert = AlertDialog(
      title: const Text('AlertDialog'),
      content: const Text('Hello there'),
      actions: [
        TextButton(
            onPressed: () {},
            child: const Text('CLOSE')
        )
      ],
    );*/ /*

    */ /*showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('AlertDialog'),
            content: const Text('Hello there'),
            actions: [
              TextButton(
                  onPressed: () {Navigator.pop(context);},
                  child: const Text('CLOSE')
              )
            ],
          );
        }
    );*/ /*
  }*/

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
              )
            ],
          ))),
    );
  }
}
