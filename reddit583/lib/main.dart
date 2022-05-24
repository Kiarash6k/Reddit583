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
        splash: Image.asset('assets/images/redit.jpeg'),
        duration: 1700,
        splashTransition: SplashTransition.decoratedBoxTransition,
        backgroundColor: Color.fromARGB(255, 32, 35, 34),
        nextScreen: Scaffold(),
      ),
    );
  }
}
