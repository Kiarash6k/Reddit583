import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Icons.reddit,
        duration: 1700,
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Colors.red,
        nextScreen: Scaffold(),
      ),
    );
  }
}
