import 'package:flutter/material.dart';
import 'package:splash_screen_demo/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String hahahahahah;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}
