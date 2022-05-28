// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/WelcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/yoda2.png',),
        duration: 1700,
        splashTransition: SplashTransition.decoratedBoxTransition,
        backgroundColor: Color.fromARGB(255, 32, 35, 34),
        nextScreen: WelcomeScreen(),
      ),
    );
  }
}
