import 'package:flutter/material.dart';
import 'package:secure_nagrik/HomePage.dart';
import 'splashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
    // return HomePage();
  }
}