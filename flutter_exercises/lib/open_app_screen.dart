import 'package:flutter/material.dart';
import 'package:flutter_exercises/mainmenu.dart';
import 'package:splashscreen/splashscreen.dart';

class OpenAppScreen extends StatelessWidget {
  const OpenAppScreen({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SplashScreen',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: SplashScreen(
        seconds: 5,
        navigateAfterSeconds: Mainmenu(),
        title: const Text(
            'SplashScreen example',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20.0,
               color: Colors.deepPurple
             ),
        ),
        backgroundColor: Colors.grey,
      )
    );
  }
}
